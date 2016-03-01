require 'bundler'
Bundler.require
require 'logger'
require 'sidekiq'
require 'sidekiq/api'
require 'sidekiq/web'
require 'redis'
require_relative 'workers/zoompf_worker.rb'
require 'swagger_client'

SwaggerClient.configure do |config|
  config.api_client = SwaggerClient::ApiClient.new(ENV['ZOOMPF_API_KEY'])
end

SERVER_REGEX = if ENV['SEMAPHORE_SERVER_REGEX'] && !ENV['SEMAPHORE_SERVER_REGEX'].empty?
  Regexp.new(ENV['SEMAPHORE_SERVER_REGEX'])
end

configure :production do
  app_logger = Logger.new(STDOUT)
  set :logging, Logger::WARN
  use Rack::CommonLogger, app_logger
  set :dump_errors, false
  set :raise_errors, false
end

configure :development do
  app_logger = Logger.new(STDOUT)
  set :logging, Logger::DEBUG
  use Rack::CommonLogger, app_logger
end

use Rack::Throttle::Hourly, :max => 100, :cache => Redis.new, :key_prefix => :throttle

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == ENV['APP_USERNAME'] and password == ENV['APP_PASSWORD']
end

get '/stats' do
  content_type :json
  stats = Sidekiq::Stats.new
  workers = Sidekiq::Workers.new

  {
    enqueued:    stats.enqueued,
    in_progress: workers.size,
    processed:   stats.processed
  }.to_json
end

post '/' do
  content_type :json
  request.body.rewind

  begin
    data = request.body.read
    json = JSON.parse(data)
    if json.empty?
      logger.error('JSON payload is empty')
      halt 500
    end
  rescue JSON::ParserError => ex
    logger.error('Unable to parse JSON')
    logger.error(ex)
    halt 500
  ensure
    logger.debug(data)
  end

  # only respond to successful deploys
  if json['event'] == 'deploy' && json['result'] == 'passed'
    # if a server regex is specified, make sure the deployed server matches
    if SERVER_REGEX && !SERVER_REGEX.match(json['server_name'])
      logger.info("Server '#{json['server_name']}' doesn't match regex, quitting")
      halt 400
    else
      ZoompfWorker.perform_async(json['commit'])
      logger.info("Enqueued Zoompf worker")
      status 202
    end
  else
    logger.info("Unsupported webhook event")
    halt 400
  end
end
