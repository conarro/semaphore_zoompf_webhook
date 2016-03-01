module SwaggerClient
  # 
  class DefectFiltering < BaseObject
    attr_accessor :show_tpc, :role, :severity
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # (Optional) Show defects only for Third Party Content. Defaults to First Party only (No). Set Yes for Third Party only, or Unknown for all defects.
        :'show_tpc' => :'show_tpc',
        
        # (Optional) Filter by role (Defaults to all roles).
        :'role' => :'role',
        
        # (Optional) Filter by severity (Defaults to all severities).
        :'severity' => :'severity'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'show_tpc' => :'String',
        :'role' => :'String',
        :'severity' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'show_tpc']
        self.show_tpc = attributes[:'show_tpc']
      end
      
      if attributes[:'role']
        self.role = attributes[:'role']
      end
      
      if attributes[:'severity']
        self.severity = attributes[:'severity']
      end
      
    end

    def show_tpc=(show_tpc)
      allowed_values = ["Unknown", "No", "Yes"]
      if show_tpc && !allowed_values.include?(show_tpc)
        fail "invalid value for 'show_tpc', must be one of #{allowed_values}"
      end
      @show_tpc = show_tpc
    end

    def role=(role)
      allowed_values = ["Developers", "Designers", "ITOps"]
      if role && !allowed_values.include?(role)
        fail "invalid value for 'role', must be one of #{allowed_values}"
      end
      @role = role
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
