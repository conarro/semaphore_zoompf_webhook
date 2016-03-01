module SwaggerClient
  # 
  class SnapshotPaging < BaseObject
    attr_accessor :order_by, :order_asc, :range, :from, :to, :page, :per_page
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # (Optional) Order By Field, defeaults to SnapshotID
        :'order_by' => :'order_by',
        
        # (Optional) Order Ascending or Descending: Defaults to false (Descending)
        :'order_asc' => :'order_asc',
        
        # (Optional) Preset time range. Used in place of from/to.
        :'range' => :'range',
        
        # (Optional) Start of time range in ISO8601 UTC timestamp (Example 2016-02-12T16:05:00Z)
        :'from' => :'from',
        
        # (Optional) End of time range in ISO8601 UTC timestamp (Example 2016-02-12T17:05:00Z)
        :'to' => :'to',
        
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
        :'range' => :'String',
        :'from' => :'String',
        :'to' => :'String',
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
      
      if attributes[:'range']
        self.range = attributes[:'range']
      end
      
      if attributes[:'from']
        self.from = attributes[:'from']
      end
      
      if attributes[:'to']
        self.to = attributes[:'to']
      end
      
      if attributes[:'page']
        self.page = attributes[:'page']
      end
      
      if attributes[:'per_page']
        self.per_page = attributes[:'per_page']
      end
      
    end

    def order_by=(order_by)
      allowed_values = ["SnapshotID", "ScanAddedUTC", "ZoompfScore", "UrlsCrawled"]
      if order_by && !allowed_values.include?(order_by)
        fail "invalid value for 'order_by', must be one of #{allowed_values}"
      end
      @order_by = order_by
    end

    def range=(range)
      allowed_values = ["last_hour", "last_4_hours", "last_8_hours", "last_12_hours", "last_24_hours", "yesterday", "today", "last_7_days", "last_30_days", "this_week", "last_week", "this_month", "last_month", "last_3_months", "last_6_months", "last_12_months"]
      if range && !allowed_values.include?(range)
        fail "invalid value for 'range', must be one of #{allowed_values}"
      end
      @range = range
    end

  end
end
