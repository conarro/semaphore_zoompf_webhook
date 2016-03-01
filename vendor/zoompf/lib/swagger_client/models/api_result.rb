module SwaggerClient
  # 
  class APIResult < BaseObject
    attr_accessor :result, :message, :errors
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Result of the operation
        :'result' => :'result',
        
        # Description of the result
        :'message' => :'message',
        
        # A list of any errors encountered
        :'errors' => :'errors'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'result' => :'String',
        :'message' => :'String',
        :'errors' => :'Array<APIError>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'result']
        self.result = attributes[:'result']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'errors']
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end
      
    end

    def result=(result)
      allowed_values = ["success", "error"]
      if result && !allowed_values.include?(result)
        fail "invalid value for 'result', must be one of #{allowed_values}"
      end
      @result = result
    end

  end
end
