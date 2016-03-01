module SwaggerClient
  # 
  class ContentImprovement < BaseObject
    attr_accessor :defect_id, :optimized_size, :savings, :content_improvement_url, :content_improvement_url_guest, :content_id, :body_size, :third_party, :embedded, :url, :file_type, :age_in_seconds, :cached_for_seconds, :image_width, :image_height, :content_url, :content_url_guest
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'defect_id' => :'defect_id',
        
        # 
        :'optimized_size' => :'optimized_size',
        
        # 
        :'savings' => :'savings',
        
        # Content Improvement detail URL (requires login)
        :'content_improvement_url' => :'content_improvement_url',
        
        # Content Improvement detail Guest URL (no login)
        :'content_improvement_url_guest' => :'content_improvement_url_guest',
        
        # Identifier for this piece of content
        :'content_id' => :'content_id',
        
        # Original body size for this content
        :'body_size' => :'body_size',
        
        # True if third party content, false if first party content
        :'third_party' => :'third_party',
        
        # True if content is embedded on the page
        :'embedded' => :'embedded',
        
        # URL of the item
        :'url' => :'url',
        
        # Type of file
        :'file_type' => :'file_type',
        
        # Age of this item, in seconds (if present)
        :'age_in_seconds' => :'age_in_seconds',
        
        # Cache expiration time, in seconds (if present)
        :'cached_for_seconds' => :'cached_for_seconds',
        
        # Pixel width (images only)
        :'image_width' => :'image_width',
        
        # Pixel height (images only)
        :'image_height' => :'image_height',
        
        # Content detail URL (requires login)
        :'content_url' => :'content_url',
        
        # Content detail Guest URL (no login)
        :'content_url_guest' => :'content_url_guest'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'defect_id' => :'Integer',
        :'optimized_size' => :'Integer',
        :'savings' => :'Integer',
        :'content_improvement_url' => :'String',
        :'content_improvement_url_guest' => :'String',
        :'content_id' => :'Integer',
        :'body_size' => :'Integer',
        :'third_party' => :'BOOLEAN',
        :'embedded' => :'BOOLEAN',
        :'url' => :'String',
        :'file_type' => :'String',
        :'age_in_seconds' => :'Integer',
        :'cached_for_seconds' => :'Integer',
        :'image_width' => :'Integer',
        :'image_height' => :'Integer',
        :'content_url' => :'String',
        :'content_url_guest' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'defect_id']
        self.defect_id = attributes[:'defect_id']
      end
      
      if attributes[:'optimized_size']
        self.optimized_size = attributes[:'optimized_size']
      end
      
      if attributes[:'savings']
        self.savings = attributes[:'savings']
      end
      
      if attributes[:'content_improvement_url']
        self.content_improvement_url = attributes[:'content_improvement_url']
      end
      
      if attributes[:'content_improvement_url_guest']
        self.content_improvement_url_guest = attributes[:'content_improvement_url_guest']
      end
      
      if attributes[:'content_id']
        self.content_id = attributes[:'content_id']
      end
      
      if attributes[:'body_size']
        self.body_size = attributes[:'body_size']
      end
      
      if attributes[:'third_party']
        self.third_party = attributes[:'third_party']
      end
      
      if attributes[:'embedded']
        self.embedded = attributes[:'embedded']
      end
      
      if attributes[:'url']
        self.url = attributes[:'url']
      end
      
      if attributes[:'file_type']
        self.file_type = attributes[:'file_type']
      end
      
      if attributes[:'age_in_seconds']
        self.age_in_seconds = attributes[:'age_in_seconds']
      end
      
      if attributes[:'cached_for_seconds']
        self.cached_for_seconds = attributes[:'cached_for_seconds']
      end
      
      if attributes[:'image_width']
        self.image_width = attributes[:'image_width']
      end
      
      if attributes[:'image_height']
        self.image_height = attributes[:'image_height']
      end
      
      if attributes[:'content_url']
        self.content_url = attributes[:'content_url']
      end
      
      if attributes[:'content_url_guest']
        self.content_url_guest = attributes[:'content_url_guest']
      end
      
    end

    def file_type=(file_type)
      allowed_values = ["Unknown", "GenericText", "GenericBinary", "XBM", "ICO", "PNG", "GIF", "JPG", "BMP", "WEBP", "TIFF", "SVG", "MP4", "OggV", "WebM", "EOT", "TTF", "OTF", "WOFF", "WOFF2", "SVGFont", "Flash", "AtomFeed", "CSS", "HTML", "JavaScript", "RobotsText", "RSS", "HTC", "XAP", "ZIP"]
      if file_type && !allowed_values.include?(file_type)
        fail "invalid value for 'file_type', must be one of #{allowed_values}"
      end
      @file_type = file_type
    end

  end
end
