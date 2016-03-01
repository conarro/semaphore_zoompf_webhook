module SwaggerClient
  # 
  class TestDetail < BaseObject
    attr_accessor :test_id, :test_url, :snapshot_id, :snapshot_count, :created_utc, :name, :scan_type, :start_url, :start_url_list, :har_file_url, :device_type, :whitelist_domains, :defect_check_policy_id, :recurring
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique ID of the performance test
        :'test_id' => :'test_id',
        
        # Performance Test detail URL (requires login)
        :'test_url' => :'test_url',
        
        # Most recent snapshot_id for this test
        :'snapshot_id' => :'snapshot_id',
        
        # Number of snapshots run for this test
        :'snapshot_count' => :'snapshot_count',
        
        # When the test was created (UTC)
        :'created_utc' => :'created_utc',
        
        # Name of Performance Test (Optional)
        :'name' => :'name',
        
        # Type of Test, defaults to WebPage
        :'scan_type' => :'scan_type',
        
        # Test Start URL (required for scan_type of WebPage or WebSite)
        :'start_url' => :'start_url',
        
        # Multiple Test Start URLs (required for scan_type of BulkScanPages)
        :'start_url_list' => :'start_url_list',
        
        # URL to the HAR file to import for scan_type of HarFileImport
        :'har_file_url' => :'har_file_url',
        
        # Device config, defaults to DesktopChrome
        :'device_type' => :'device_type',
        
        # Additional first party whitelist domains
        :'whitelist_domains' => :'whitelist_domains',
        
        # Defect Check Policy ID (Optional). Defaults to system policy.
        :'defect_check_policy_id' => :'defect_check_policy_id',
        
        # Is this a daily recurring test? Defaults to false
        :'recurring' => :'recurring'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'test_id' => :'Integer',
        :'test_url' => :'String',
        :'snapshot_id' => :'Integer',
        :'snapshot_count' => :'Integer',
        :'created_utc' => :'DateTime',
        :'name' => :'String',
        :'scan_type' => :'String',
        :'start_url' => :'String',
        :'start_url_list' => :'Array<String>',
        :'har_file_url' => :'String',
        :'device_type' => :'String',
        :'whitelist_domains' => :'Array<String>',
        :'defect_check_policy_id' => :'Integer',
        :'recurring' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'test_id']
        self.test_id = attributes[:'test_id']
      end
      
      if attributes[:'test_url']
        self.test_url = attributes[:'test_url']
      end
      
      if attributes[:'snapshot_id']
        self.snapshot_id = attributes[:'snapshot_id']
      end
      
      if attributes[:'snapshot_count']
        self.snapshot_count = attributes[:'snapshot_count']
      end
      
      if attributes[:'created_utc']
        self.created_utc = attributes[:'created_utc']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'scan_type']
        self.scan_type = attributes[:'scan_type']
      end
      
      if attributes[:'start_url']
        self.start_url = attributes[:'start_url']
      end
      
      if attributes[:'start_url_list']
        if (value = attributes[:'start_url_list']).is_a?(Array)
          self.start_url_list = value
        end
      end
      
      if attributes[:'har_file_url']
        self.har_file_url = attributes[:'har_file_url']
      end
      
      if attributes[:'device_type']
        self.device_type = attributes[:'device_type']
      end
      
      if attributes[:'whitelist_domains']
        if (value = attributes[:'whitelist_domains']).is_a?(Array)
          self.whitelist_domains = value
        end
      end
      
      if attributes[:'defect_check_policy_id']
        self.defect_check_policy_id = attributes[:'defect_check_policy_id']
      end
      
      if attributes[:'recurring']
        self.recurring = attributes[:'recurring']
      end
      
    end

    def scan_type=(scan_type)
      allowed_values = ["Unknown", "WebPage", "WebSite", "AutomatedScript", "BulkScanPages", "ImportedScan", "HarFileImport"]
      if scan_type && !allowed_values.include?(scan_type)
        fail "invalid value for 'scan_type', must be one of #{allowed_values}"
      end
      @scan_type = scan_type
    end

    def device_type=(device_type)
      allowed_values = ["DesktopChrome", "MobileIPhone5Portrait", "MobileIPhone5Landscape", "MobileIPhone6Portrait", "MobileIPhone6Landscape", "MobileSamsumgGalaxySPortrait", "MobileSamsumgGalaxySLandscape", "TabletIPadPortrait", "TabletIPadLandscape"]
      if device_type && !allowed_values.include?(device_type)
        fail "invalid value for 'device_type', must be one of #{allowed_values}"
      end
      @device_type = device_type
    end

  end
end
