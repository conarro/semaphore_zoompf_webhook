module SwaggerClient
  # 
  class ContentFiltering < BaseObject
    attr_accessor :file_type, :show_tpc
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # (Optional) Filter by file type (Defaults to all files).
        :'file_type' => :'file_type',
        
        # (Optional) Show defects only for Third Party Content. Defaults to First Party only (No). Set Yes for Third Party only, or Unknown for all defects.
        :'show_tpc' => :'show_tpc'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'file_type' => :'String',
        :'show_tpc' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'file_type']
        self.file_type = attributes[:'file_type']
      end
      
      if attributes[:'show_tpc']
        self.show_tpc = attributes[:'show_tpc']
      end
      
    end

    def file_type=(file_type)
      allowed_values = ["Unknown", "GenericText", "GenericBinary", "XBM", "ICO", "PNG", "GIF", "JPG", "BMP", "WEBP", "TIFF", "SVG", "MP4", "OggV", "WebM", "EOT", "TTF", "OTF", "WOFF", "WOFF2", "SVGFont", "Flash", "AtomFeed", "CSS", "HTML", "JavaScript", "RobotsText", "RSS", "HTC", "XAP", "ZIP"]
      if file_type && !allowed_values.include?(file_type)
        fail "invalid value for 'file_type', must be one of #{allowed_values}"
      end
      @file_type = file_type
    end

    def show_tpc=(show_tpc)
      allowed_values = ["Unknown", "No", "Yes"]
      if show_tpc && !allowed_values.include?(show_tpc)
        fail "invalid value for 'show_tpc', must be one of #{allowed_values}"
      end
      @show_tpc = show_tpc
    end

  end
end
