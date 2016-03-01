module SwaggerClient
  # 
  class APIError < BaseObject
    attr_accessor :title, :description, :code
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Summary of the error
        :'title' => :'title',
        
        # (Optional) more detail about the error
        :'description' => :'description',
        
        # (Optional) application specific error code for this error
        :'code' => :'code'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'title' => :'String',
        :'description' => :'String',
        :'code' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'title']
        self.title = attributes[:'title']
      end
      
      if attributes[:'description']
        self.description = attributes[:'description']
      end
      
      if attributes[:'code']
        self.code = attributes[:'code']
      end
      
    end

  end
end
