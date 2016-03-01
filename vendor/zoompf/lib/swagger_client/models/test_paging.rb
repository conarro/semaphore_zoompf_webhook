module SwaggerClient
  # 
  class TestPaging < BaseObject
    attr_accessor :order_by, :order_asc, :page, :per_page
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # (Optional) Order By Field, defeaults to test_id
        :'order_by' => :'order_by',
        
        # (Optional) Order Ascending or Descending: Defaults to false (Descending)
        :'order_asc' => :'order_asc',
        
        # (Optional) Page number, Starting at 1
        :'page' => :'page',
        
        # (Optional) Maximum results per page. Defaults to 50.
        :'per_page' => :'per_page'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'order_by' => :'String',
        :'order_asc' => :'BOOLEAN',
        :'page' => :'Integer',
        :'per_page' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'order_by']
        self.order_by = attributes[:'order_by']
      end
      
      if attributes[:'order_asc']
        self.order_asc = attributes[:'order_asc']
      end
      
      if attributes[:'page']
        self.page = attributes[:'page']
      end
      
      if attributes[:'per_page']
        self.per_page = attributes[:'per_page']
      end
      
    end

    def order_by=(order_by)
      allowed_values = ["PerformanceTestID", "Name", "CreatedUTC", "SnapshotCount"]
      if order_by && !allowed_values.include?(order_by)
        fail "invalid value for 'order_by', must be one of #{allowed_values}"
      end
      @order_by = order_by
    end

  end
end
