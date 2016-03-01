module SwaggerClient
  # 
  class DefectDetail < BaseObject
    attr_accessor :improvements, :test_id, :snapshot_id, :defect_id, :severity, :name, :total_orig_size, :max_orig_size, :total_new_size, :max_new_size, :total_savings, :max_savings, :item_count, :defect_url, :defect_url_guest
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # All content improvements possible for this defect
        :'improvements' => :'improvements',
        
        # ID of the Performance Test owning this snapshot
        :'test_id' => :'test_id',
        
        # ID of the Performance Snapshot
        :'snapshot_id' => :'snapshot_id',
        
        # ID of this Performance Defect
        :'defect_id' => :'defect_id',
        
        # Defect Severity
        :'severity' => :'severity',
        
        # Name of this defect
        :'name' => :'name',
        
        # Total size (in bytes) of all files impacted by this defect without optimization
        :'total_orig_size' => :'total_orig_size',
        
        # Largest size (in bytes) of any one file impacted by this defect without optimization
        :'max_orig_size' => :'max_orig_size',
        
        # Total size (in bytes) of all files impacted by this defect after optimization
        :'total_new_size' => :'total_new_size',
        
        # Largest size (in bytes) of any one file impacted by this defect after optimization
        :'max_new_size' => :'max_new_size',
        
        # Total savings (in bytes) of all files impacted by this defect after optimization
        :'total_savings' => :'total_savings',
        
        # Largest savings (in bytes) of any one file impacted by this defect after optimization
        :'max_savings' => :'max_savings',
        
        # Count of all content items impacted by this defect
        :'item_count' => :'item_count',
        
        # Defect detail URL (requires login)
        :'defect_url' => :'defect_url',
        
        # Defect detail Guest URL (no login)
        :'defect_url_guest' => :'defect_url_guest'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'improvements' => :'Array<ContentImprovement>',
        :'test_id' => :'Integer',
        :'snapshot_id' => :'Integer',
        :'defect_id' => :'Integer',
        :'severity' => :'String',
        :'name' => :'String',
        :'total_orig_size' => :'Integer',
        :'max_orig_size' => :'Integer',
        :'total_new_size' => :'Integer',
        :'max_new_size' => :'Integer',
        :'total_savings' => :'Integer',
        :'max_savings' => :'Integer',
        :'item_count' => :'Integer',
        :'defect_url' => :'String',
        :'defect_url_guest' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'improvements']
        if (value = attributes[:'improvements']).is_a?(Array)
          self.improvements = value
        end
      end
      
      if attributes[:'test_id']
        self.test_id = attributes[:'test_id']
      end
      
      if attributes[:'snapshot_id']
        self.snapshot_id = attributes[:'snapshot_id']
      end
      
      if attributes[:'defect_id']
        self.defect_id = attributes[:'defect_id']
      end
      
      if attributes[:'severity']
        self.severity = attributes[:'severity']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'total_orig_size']
        self.total_orig_size = attributes[:'total_orig_size']
      end
      
      if attributes[:'max_orig_size']
        self.max_orig_size = attributes[:'max_orig_size']
      end
      
      if attributes[:'total_new_size']
        self.total_new_size = attributes[:'total_new_size']
      end
      
      if attributes[:'max_new_size']
        self.max_new_size = attributes[:'max_new_size']
      end
      
      if attributes[:'total_savings']
        self.total_savings = attributes[:'total_savings']
      end
      
      if attributes[:'max_savings']
        self.max_savings = attributes[:'max_savings']
      end
      
      if attributes[:'item_count']
        self.item_count = attributes[:'item_count']
      end
      
      if attributes[:'defect_url']
        self.defect_url = attributes[:'defect_url']
      end
      
      if attributes[:'defect_url_guest']
        self.defect_url_guest = attributes[:'defect_url_guest']
      end
      
    end

    def severity=(severity)
      allowed_values = ["Info", "Low", "Medium", "High", "Critical"]
      if severity && !allowed_values.include?(severity)
        fail "invalid value for 'severity', must be one of #{allowed_values}"
      end
      @severity = severity
    end

  end
end
