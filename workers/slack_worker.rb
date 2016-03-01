class SlackWorker
  include Sidekiq::Worker
  SLACK_NOTIFIER = Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'], http_options: { open_timeout: 10 })

  def perform commit_info, score_result, color, comparison_url
    commit_id     = commit_info['id']
    commit_url    = commit_info['url']
    commit_author = commit_info['author_name']

    SLACK_NOTIFIER.ping(nil, attachments: [
      {
        title:      score_result,
        title_link: comparison_url,
        color:      color,
        fields: [
          {
            title: 'Commit',
            value: "<#{commit_url}|#{commit_id[0..6]}>",
            short: true
          },
          {
            title: 'Author',
            value: commit_author,
            short: true
          }
        ],
        fallback: "#{score_result}: #{comparison_url}"
      }
    ])
  end

end
