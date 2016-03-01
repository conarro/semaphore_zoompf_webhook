module SwaggerClient
  # 
  class SnapshotInput < BaseObject
    attr_accessor :har_file_url
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # (Optional) URL of a new HAR file to use for this Snapshot. Only applies to Tests where scan_type is HarFileImport. Omit for all other test types.
        :'har_file_url' => :'har_file_url'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'har_file_url' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'har_file_url']
        self.har_file_url = attributes[:'har_file_url']
      end
      
    end

  end
end
