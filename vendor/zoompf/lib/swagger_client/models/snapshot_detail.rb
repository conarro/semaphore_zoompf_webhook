module SwaggerClient
  # 
  class SnapshotDetail < BaseObject
    attr_accessor :test_id, :snapshot_id, :tix, :status, :scan_added_utc, :recurring, :snapshot_url, :snapshot_url_guest, :zoompf_score, :savingspct_aggressive, :savingspct_conservative, :item_count_1_pc, :item_bytes_1_pc, :item_count_3_pc, :item_bytes_3_pc, :defect_count_critical_1pc, :defect_count_high_1pc, :defect_count_medium_1pc, :defect_count_low_1pc, :defect_count_info_1pc, :defect_count_total_1pc, :defect_item_count_critical_1pc, :defect_item_count_high_1pc, :defect_item_count_medium_1pc, :defect_item_count_low_1pc, :defect_item_count_info_1pc, :defect_item_count_total_1pc, :defect_count_critical_3pc, :defect_count_high_3pc, :defect_count_medium_3pc, :defect_count_low_3pc, :defect_count_info_3pc, :defect_count_total_3pc, :defect_item_count_critical_3pc, :defect_item_count_high_3pc, :defect_item_count_medium_3pc, :defect_item_count_low_3pc, :defect_item_count_info_3pc, :defect_item_count_total_3pc
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of the Performance Test owning this snapshot
        :'test_id' => :'test_id',
        
        # ID of the Performance Snapshot
        :'snapshot_id' => :'snapshot_id',
        
        # Unique token idenentifer for this snapshot
        :'tix' => :'tix',
        
        # Status of the Snapshot
        :'status' => :'status',
        
        # When the snapshot was created (UTC)
        :'scan_added_utc' => :'scan_added_utc',
        
        # Snapshot was run as a recurring test
        :'recurring' => :'recurring',
        
        # Snapshot detail URL (requires login)
        :'snapshot_url' => :'snapshot_url',
        
        # Snapshot detail Guest URL (no login)
        :'snapshot_url_guest' => :'snapshot_url_guest',
        
        # Zoompf Score for this snapshot
        :'zoompf_score' => :'zoompf_score',
        
        # Percent savings using aggressive optimizations.
        :'savingspct_aggressive' => :'savingspct_aggressive',
        
        # Percent savings using conservative optimizations.
        :'savingspct_conservative' => :'savingspct_conservative',
        
        # Total count of distinct first party content items
        :'item_count_1_pc' => :'item_count_1PC',
        
        # Total byte size of distinct first party content items
        :'item_bytes_1_pc' => :'item_bytes_1PC',
        
        # Total count of distinct third party content items
        :'item_count_3_pc' => :'item_count_3PC',
        
        # Total byte size of distinct third party content items
        :'item_bytes_3_pc' => :'item_bytes_3PC',
        
        # Distinct defect count for critical severity, first party content.
        :'defect_count_critical_1pc' => :'defect_count_critical_1pc',
        
        # Distinct defect count for high severity, first party content.
        :'defect_count_high_1pc' => :'defect_count_high_1pc',
        
        # Distinct defect count for medium severity, first party content.
        :'defect_count_medium_1pc' => :'defect_count_medium_1pc',
        
        # Distinct defect count for low severity, first party content.
        :'defect_count_low_1pc' => :'defect_count_low_1pc',
        
        # Distinct defect count for info severity, first party content.
        :'defect_count_info_1pc' => :'defect_count_info_1pc',
        
        # Distinct defect count for all severities, first party content.
        :'defect_count_total_1pc' => :'defect_count_total_1pc',
        
        # Total impacted items for all critical severity defects, first party content.
        :'defect_item_count_critical_1pc' => :'defect_item_count_critical_1pc',
        
        # Total impacted items for all high severity defects, first party content.
        :'defect_item_count_high_1pc' => :'defect_item_count_high_1pc',
        
        # Total impacted items for all medium severity defects, first party content.
        :'defect_item_count_medium_1pc' => :'defect_item_count_medium_1pc',
        
        # Total impacted items for all low severity defects, first party content.
        :'defect_item_count_low_1pc' => :'defect_item_count_low_1pc',
        
        # Total impacted items for all info severity defects, first party content.
        :'defect_item_count_info_1pc' => :'defect_item_count_info_1pc',
        
        # Total impacted items for all defects severities, first party content.
        :'defect_item_count_total_1pc' => :'defect_item_count_total_1pc',
        
        # Distinct defect count for critical severity, third party content.
        :'defect_count_critical_3pc' => :'defect_count_critical_3pc',
        
        # Distinct defect count for high severity, third party content.
        :'defect_count_high_3pc' => :'defect_count_high_3pc',
        
        # Distinct defect count for medium severity, third party content.
        :'defect_count_medium_3pc' => :'defect_count_medium_3pc',
        
        # Distinct defect count for low severity, third party content.
        :'defect_count_low_3pc' => :'defect_count_low_3pc',
        
        # Distinct defect count for info severity, third party content.
        :'defect_count_info_3pc' => :'defect_count_info_3pc',
        
        # Distinct defect count for all severities, third party content.
        :'defect_count_total_3pc' => :'defect_count_total_3pc',
        
        # Total impacted items for all critical severity defects, third party content.
        :'defect_item_count_critical_3pc' => :'defect_item_count_critical_3pc',
        
        # Total impacted items for all high severity defects, third party content.
        :'defect_item_count_high_3pc' => :'defect_item_count_high_3pc',
        
        # Total impacted items for all medium severity defects, third party content.
        :'defect_item_count_medium_3pc' => :'defect_item_count_medium_3pc',
        
        # Total impacted items for all low severity defects, third party content.
        :'defect_item_count_low_3pc' => :'defect_item_count_low_3pc',
        
        # Total impacted items for all info severity defects, third party content.
        :'defect_item_count_info_3pc' => :'defect_item_count_info_3pc',
        
        # Total impacted items for all defects severities, third party content.
        :'defect_item_count_total_3pc' => :'defect_item_count_total_3pc'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'test_id' => :'Integer',
        :'snapshot_id' => :'Integer',
        :'tix' => :'String',
        :'status' => :'String',
        :'scan_added_utc' => :'DateTime',
        :'recurring' => :'BOOLEAN',
        :'snapshot_url' => :'String',
        :'snapshot_url_guest' => :'String',
        :'zoompf_score' => :'Integer',
        :'savingspct_aggressive' => :'Float',
        :'savingspct_conservative' => :'Float',
        :'item_count_1_pc' => :'Integer',
        :'item_bytes_1_pc' => :'Integer',
        :'item_count_3_pc' => :'Integer',
        :'item_bytes_3_pc' => :'Integer',
        :'defect_count_critical_1pc' => :'Integer',
        :'defect_count_high_1pc' => :'Integer',
        :'defect_count_medium_1pc' => :'Integer',
        :'defect_count_low_1pc' => :'Integer',
        :'defect_count_info_1pc' => :'Integer',
        :'defect_count_total_1pc' => :'Integer',
        :'defect_item_count_critical_1pc' => :'Integer',
        :'defect_item_count_high_1pc' => :'Integer',
        :'defect_item_count_medium_1pc' => :'Integer',
        :'defect_item_count_low_1pc' => :'Integer',
        :'defect_item_count_info_1pc' => :'Integer',
        :'defect_item_count_total_1pc' => :'Integer',
        :'defect_count_critical_3pc' => :'Integer',
        :'defect_count_high_3pc' => :'Integer',
        :'defect_count_medium_3pc' => :'Integer',
        :'defect_count_low_3pc' => :'Integer',
        :'defect_count_info_3pc' => :'Integer',
        :'defect_count_total_3pc' => :'Integer',
        :'defect_item_count_critical_3pc' => :'Integer',
        :'defect_item_count_high_3pc' => :'Integer',
        :'defect_item_count_medium_3pc' => :'Integer',
        :'defect_item_count_low_3pc' => :'Integer',
        :'defect_item_count_info_3pc' => :'Integer',
        :'defect_item_count_total_3pc' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'test_id']
        self.test_id = attributes[:'test_id']
      end
      
      if attributes[:'snapshot_id']
        self.snapshot_id = attributes[:'snapshot_id']
      end
      
      if attributes[:'tix']
        self.tix = attributes[:'tix']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'scan_added_utc']
        self.scan_added_utc = attributes[:'scan_added_utc']
      end
      
      if attributes[:'recurring']
        self.recurring = attributes[:'recurring']
      end
      
      if attributes[:'snapshot_url']
        self.snapshot_url = attributes[:'snapshot_url']
      end
      
      if attributes[:'snapshot_url_guest']
        self.snapshot_url_guest = attributes[:'snapshot_url_guest']
      end
      
      if attributes[:'zoompf_score']
        self.zoompf_score = attributes[:'zoompf_score']
      end
      
      if attributes[:'savingspct_aggressive']
        self.savingspct_aggressive = attributes[:'savingspct_aggressive']
      end
      
      if attributes[:'savingspct_conservative']
        self.savingspct_conservative = attributes[:'savingspct_conservative']
      end
      
      if attributes[:'item_count_1PC']
        self.item_count_1_pc = attributes[:'item_count_1PC']
      end
      
      if attributes[:'item_bytes_1PC']
        self.item_bytes_1_pc = attributes[:'item_bytes_1PC']
      end
      
      if attributes[:'item_count_3PC']
        self.item_count_3_pc = attributes[:'item_count_3PC']
      end
      
      if attributes[:'item_bytes_3PC']
        self.item_bytes_3_pc = attributes[:'item_bytes_3PC']
      end
      
      if attributes[:'defect_count_critical_1pc']
        self.defect_count_critical_1pc = attributes[:'defect_count_critical_1pc']
      end
      
      if attributes[:'defect_count_high_1pc']
        self.defect_count_high_1pc = attributes[:'defect_count_high_1pc']
      end
      
      if attributes[:'defect_count_medium_1pc']
        self.defect_count_medium_1pc = attributes[:'defect_count_medium_1pc']
      end
      
      if attributes[:'defect_count_low_1pc']
        self.defect_count_low_1pc = attributes[:'defect_count_low_1pc']
      end
      
      if attributes[:'defect_count_info_1pc']
        self.defect_count_info_1pc = attributes[:'defect_count_info_1pc']
      end
      
      if attributes[:'defect_count_total_1pc']
        self.defect_count_total_1pc = attributes[:'defect_count_total_1pc']
      end
      
      if attributes[:'defect_item_count_critical_1pc']
        self.defect_item_count_critical_1pc = attributes[:'defect_item_count_critical_1pc']
      end
      
      if attributes[:'defect_item_count_high_1pc']
        self.defect_item_count_high_1pc = attributes[:'defect_item_count_high_1pc']
      end
      
      if attributes[:'defect_item_count_medium_1pc']
        self.defect_item_count_medium_1pc = attributes[:'defect_item_count_medium_1pc']
      end
      
      if attributes[:'defect_item_count_low_1pc']
        self.defect_item_count_low_1pc = attributes[:'defect_item_count_low_1pc']
      end
      
      if attributes[:'defect_item_count_info_1pc']
        self.defect_item_count_info_1pc = attributes[:'defect_item_count_info_1pc']
      end
      
      if attributes[:'defect_item_count_total_1pc']
        self.defect_item_count_total_1pc = attributes[:'defect_item_count_total_1pc']
      end
      
      if attributes[:'defect_count_critical_3pc']
        self.defect_count_critical_3pc = attributes[:'defect_count_critical_3pc']
      end
      
      if attributes[:'defect_count_high_3pc']
        self.defect_count_high_3pc = attributes[:'defect_count_high_3pc']
      end
      
      if attributes[:'defect_count_medium_3pc']
        self.defect_count_medium_3pc = attributes[:'defect_count_medium_3pc']
      end
      
      if attributes[:'defect_count_low_3pc']
        self.defect_count_low_3pc = attributes[:'defect_count_low_3pc']
      end
      
      if attributes[:'defect_count_info_3pc']
        self.defect_count_info_3pc = attributes[:'defect_count_info_3pc']
      end
      
      if attributes[:'defect_count_total_3pc']
        self.defect_count_total_3pc = attributes[:'defect_count_total_3pc']
      end
      
      if attributes[:'defect_item_count_critical_3pc']
        self.defect_item_count_critical_3pc = attributes[:'defect_item_count_critical_3pc']
      end
      
      if attributes[:'defect_item_count_high_3pc']
        self.defect_item_count_high_3pc = attributes[:'defect_item_count_high_3pc']
      end
      
      if attributes[:'defect_item_count_medium_3pc']
        self.defect_item_count_medium_3pc = attributes[:'defect_item_count_medium_3pc']
      end
      
      if attributes[:'defect_item_count_low_3pc']
        self.defect_item_count_low_3pc = attributes[:'defect_item_count_low_3pc']
      end
      
      if attributes[:'defect_item_count_info_3pc']
        self.defect_item_count_info_3pc = attributes[:'defect_item_count_info_3pc']
      end
      
      if attributes[:'defect_item_count_total_3pc']
        self.defect_item_count_total_3pc = attributes[:'defect_item_count_total_3pc']
      end
      
    end

    def status=(status)
      allowed_values = ["InQueue", "Complete", "BadScan", "ScanRunning"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end
