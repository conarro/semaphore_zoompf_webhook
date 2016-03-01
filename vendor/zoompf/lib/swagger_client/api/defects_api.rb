require "uri"

module SwaggerClient
  class DefectsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get Defects
    # 
    # @param test_id ID of the test for which to fetch defects
    # @param snapshot_id ID of the snapshot for which to fetch defects
    # @param [Hash] opts the optional parameters
    # @option opts [String] :f_show_tpc (Optional) Show defects only for Third Party Content. Defaults to First Party only (No). Set Yes for Third Party only, or Unknown for all defects.
    # @option opts [String] :f_role (Optional) Filter by role (Defaults to all roles).
    # @option opts [String] :f_severity (Optional) Filter by severity (Defaults to all severities).
    # @option opts [String] :p_order_by (Optional) Order By Field, defeaults to Severity
    # @option opts [BOOLEAN] :p_order_asc (Optional) Order Ascending or Descending: Defaults to false (Descending)
    # @option opts [Integer] :p_page (Optional) Page number, Starting at 1
    # @option opts [Integer] :p_per_page (Optional) Maximum results per page. Defaults to 50.
    # @return [DefectList]
    def v2_defects_get(test_id, snapshot_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DefectsApi#v2_defects_get ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_defects_get" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_defects_get" if snapshot_id.nil?
      
      if opts[:'f_show_tpc'] && !['Unknown', 'No', 'Yes'].include?(opts[:'f_show_tpc'])
        fail 'invalid value for "f_show_tpc", must be one of Unknown, No, Yes'
      end
      
      if opts[:'f_role'] && !['Developers', 'Designers', 'ITOps'].include?(opts[:'f_role'])
        fail 'invalid value for "f_role", must be one of Developers, Designers, ITOps'
      end
      
      if opts[:'f_severity'] && !['Info', 'Low', 'Medium', 'High', 'Critical'].include?(opts[:'f_severity'])
        fail 'invalid value for "f_severity", must be one of Info, Low, Medium, High, Critical'
      end
      
      if opts[:'p_order_by'] && !['Severity', 'Name', 'TotalOrigSize', 'MaxOrigSize', 'TotalNewSize', 'MaxNewSize', 'TotalSavings', 'MaxSavings', 'ItemCount'].include?(opts[:'p_order_by'])
        fail 'invalid value for "p_order_by", must be one of Severity, Name, TotalOrigSize, MaxOrigSize, TotalNewSize, MaxNewSize, TotalSavings, MaxSavings, ItemCount'
      end
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}/defects".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'f.show_tpc'] = opts[:'f_show_tpc'] if opts[:'f_show_tpc']
      query_params[:'f.role'] = opts[:'f_role'] if opts[:'f_role']
      query_params[:'f.severity'] = opts[:'f_severity'] if opts[:'f_severity']
      query_params[:'p.order_by'] = opts[:'p_order_by'] if opts[:'p_order_by']
      query_params[:'p.order_asc'] = opts[:'p_order_asc'] if opts[:'p_order_asc']
      query_params[:'p.page'] = opts[:'p_page'] if opts[:'p_page']
      query_params[:'p.per_page'] = opts[:'p_per_page'] if opts[:'p_per_page']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DefectList')
      if Configuration.debugging
        Configuration.logger.debug "API called: DefectsApi#v2_defects_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get Defect Detail
    # 
    # @param test_id ID of the test owning this snapshot
    # @param snapshot_id ID of the Snapshot
    # @param defect_id ID of the Defect
    # @param [Hash] opts the optional parameters
    # @option opts [String] :show_tpc (Optional) Show defects only for Third Party Content. Defaults to First Party only (No). Set Yes for Third Party only, or Unknown for all defects.
    # @return [DefectDetail]
    def v2_defects_get_1(test_id, snapshot_id, defect_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: DefectsApi#v2_defects_get_1 ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_defects_get_1" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_defects_get_1" if snapshot_id.nil?
      
      # verify the required parameter 'defect_id' is set
      fail "Missing the required parameter 'defect_id' when calling v2_defects_get_1" if defect_id.nil?
      
      if opts[:'show_tpc'] && !['Unknown', 'No', 'Yes'].include?(opts[:'show_tpc'])
        fail 'invalid value for "show_tpc", must be one of Unknown, No, Yes'
      end
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}/defects/{defect_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s).sub('{' + 'defect_id' + '}', defect_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'show_tpc'] = opts[:'show_tpc'] if opts[:'show_tpc']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DefectDetail')
      if Configuration.debugging
        Configuration.logger.debug "API called: DefectsApi#v2_defects_get_1. Result: #{result.inspect}"
      end
      return result
    end
  end
end




