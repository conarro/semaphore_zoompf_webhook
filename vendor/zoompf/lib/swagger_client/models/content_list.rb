module SwaggerClient
  # 
  class ContentList < BaseObject
    attr_accessor :content, :per_page, :total_count, :total_pages, :current_page, :previous_page, :next_page
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'content' => :'content',
        
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
        :'content' => :'Array<ContentSummary>',
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

      
      if attributes[:'content']
        if (value = attributes[:'content']).is_a?(Array)
          self.content = value
        end
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

  end
end
