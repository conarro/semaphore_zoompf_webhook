module SwaggerClient
  # 
  class SnapshotList < BaseObject
    attr_accessor :snapshots, :range, :from, :to, :per_page, :total_count, :total_pages, :current_page, :previous_page, :next_page
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # A list of Performance Snapshots
        :'snapshots' => :'snapshots',
        
        # (Optional) Time range filter used for results, if any.
        :'range' => :'range',
        
        # Start of time range for results filter, if any. In ISO8601 UTC timestamp format.
        :'from' => :'from',
        
        # End of time range for results filter, if any. In ISO8601 UTC timestamp format.
        :'to' => :'to',
        
        # Number results per page
        :'per_page' => :'per_page',
        
        # Total number of results (all pages)
        :'total_count' => :'total_count',
        
        # Total number of pages
        :'total_pages' => :'total_pages',
        
        # Current page number returned
        :'current_page' => :'current_page',
        
        # Previous page number (Null if none)
        :'previous_page' => :'previous_page',
        
        # Next page number (Null if none)
        :'next_page' => :'next_page'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'snapshots' => :'Array<SnapshotSummary>',
        :'range' => :'String',
        :'from' => :'DateTime',
        :'to' => :'DateTime',
        :'per_page' => :'Integer',
        :'total_count' => :'Integer',
        :'total_pages' => :'Integer',
        :'current_page' => :'Integer',
        :'previous_page' => :'Integer',
        :'next_page' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'snapshots']
        if (value = attributes[:'snapshots']).is_a?(Array)
          self.snapshots = value
        end
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
      
      if attributes[:'per_page']
        self.per_page = attributes[:'per_page']
      end
      
      if attributes[:'total_count']
        self.total_count = attributes[:'total_count']
      end
      
      if attributes[:'total_pages']
        self.total_pages = attributes[:'total_pages']
      end
      
      if attributes[:'current_page']
        self.current_page = attributes[:'current_page']
      end
      
      if attributes[:'previous_page']
        self.previous_page = attributes[:'previous_page']
      end
      
      if attributes[:'next_page']
        self.next_page = attributes[:'next_page']
      end
      
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
