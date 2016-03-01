# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/test_detail'
require 'swagger_client/models/test_input'
require 'swagger_client/models/api_result'
require 'swagger_client/models/api_error'
require 'swagger_client/models/test_paging'
require 'swagger_client/models/test_list'
require 'swagger_client/models/test_summary'
require 'swagger_client/models/snapshot_detail'
require 'swagger_client/models/snapshot_paging'
require 'swagger_client/models/snapshot_list'
require 'swagger_client/models/snapshot_summary'
require 'swagger_client/models/snapshot_input'
require 'swagger_client/models/defect_detail'
require 'swagger_client/models/content_improvement'
require 'swagger_client/models/defect_filtering'
require 'swagger_client/models/defect_paging'
require 'swagger_client/models/defect_list'
require 'swagger_client/models/defect_summary'
require 'swagger_client/models/content_detail'
require 'swagger_client/models/content_filtering'
require 'swagger_client/models/content_paging'
require 'swagger_client/models/content_list'
require 'swagger_client/models/content_summary'

# APIs
require 'swagger_client/api/tests_api'
require 'swagger_client/api/snapshots_api'
require 'swagger_client/api/content_api'
require 'swagger_client/api/defects_api'

module SwaggerClient
  class << self
    # Configure sdk using block.
    # SwaggerClient.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
