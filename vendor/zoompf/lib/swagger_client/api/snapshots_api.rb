require "uri"

module SwaggerClient
  class SnapshotsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get Snapshots
    # 
    # @param test_id ID of the test for which to fetch snapshots
    # @param [Hash] opts the optional parameters
    # @option opts [String] :p_order_by (Optional) Order By Field, defeaults to SnapshotID
    # @option opts [BOOLEAN] :p_order_asc (Optional) Order Ascending or Descending: Defaults to false (Descending)
    # @option opts [String] :p_range (Optional) Preset time range. Used in place of from/to.
    # @option opts [String] :p_from (Optional) Start of time range in ISO8601 UTC timestamp (Example 2016-02-12T16:05:00Z)
    # @option opts [String] :p_to (Optional) End of time range in ISO8601 UTC timestamp (Example 2016-02-12T17:05:00Z)
    # @option opts [Integer] :p_page (Optional) Page number, Starting at 1
    # @option opts [Integer] :p_per_page (Optional) Maximum results per page. Defaults to 50.
    # @return [SnapshotList]
    def v2_snapshots_get(test_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SnapshotsApi#v2_snapshots_get ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_snapshots_get" if test_id.nil?
      
      if opts[:'p_order_by'] && !['SnapshotID', 'ScanAddedUTC', 'ZoompfScore', 'UrlsCrawled'].include?(opts[:'p_order_by'])
        fail 'invalid value for "p_order_by", must be one of SnapshotID, ScanAddedUTC, ZoompfScore, UrlsCrawled'
      end
      
      if opts[:'p_range'] && !['last_hour', 'last_4_hours', 'last_8_hours', 'last_12_hours', 'last_24_hours', 'yesterday', 'today', 'last_7_days', 'last_30_days', 'this_week', 'last_week', 'this_month', 'last_month', 'last_3_months', 'last_6_months', 'last_12_months'].include?(opts[:'p_range'])
        fail 'invalid value for "p_range", must be one of last_hour, last_4_hours, last_8_hours, last_12_hours, last_24_hours, yesterday, today, last_7_days, last_30_days, this_week, last_week, this_month, last_month, last_3_months, last_6_months, last_12_months'
      end
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'p.order_by'] = opts[:'p_order_by'] if opts[:'p_order_by']
      query_params[:'p.order_asc'] = opts[:'p_order_asc'] if opts[:'p_order_asc']
      query_params[:'p.range'] = opts[:'p_range'] if opts[:'p_range']
      query_params[:'p.from'] = opts[:'p_from'] if opts[:'p_from']
      query_params[:'p.to'] = opts[:'p_to'] if opts[:'p_to']
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
        :return_type => 'SnapshotList')
      if Configuration.debugging
        Configuration.logger.debug "API called: SnapshotsApi#v2_snapshots_get. Result: #{result.inspect}"
      end
      return result
    end

    # Create New Snapshot
    # 
    # @param test_id ID of the test for which to create a new snapshot
    # @param snapshot_detail (Optional) Additional details for new snapshot
    # @param [Hash] opts the optional parameters
    # @return [SnapshotSummary]
    def v2_snapshots_post(test_id, snapshot_detail, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SnapshotsApi#v2_snapshots_post ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_snapshots_post" if test_id.nil?
      
      # verify the required parameter 'snapshot_detail' is set
      fail "Missing the required parameter 'snapshot_detail' when calling v2_snapshots_post" if snapshot_detail.nil?
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(snapshot_detail)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SnapshotSummary')
      if Configuration.debugging
        Configuration.logger.debug "API called: SnapshotsApi#v2_snapshots_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Snapshot Detail
    # 
    # @param test_id ID of the test owning this snapshot
    # @param snapshot_id ID of the Snapshot
    # @param [Hash] opts the optional parameters
    # @return [SnapshotDetail]
    def v2_snapshots_get_1(test_id, snapshot_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SnapshotsApi#v2_snapshots_get_1 ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_snapshots_get_1" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_snapshots_get_1" if snapshot_id.nil?
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'SnapshotDetail')
      if Configuration.debugging
        Configuration.logger.debug "API called: SnapshotsApi#v2_snapshots_get_1. Result: #{result.inspect}"
      end
      return result
    end

    # Delete a Snapshot
    # 
    # @param test_id ID of the test owning this snapshot
    # @param snapshot_id ID of snapshot to delete
    # @param [Hash] opts the optional parameters
    # @return [APIResult]
    def v2_snapshots_delete(test_id, snapshot_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SnapshotsApi#v2_snapshots_delete ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_snapshots_delete" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_snapshots_delete" if snapshot_id.nil?
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s)

      # query parameters
      query_params = {}

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
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIResult')
      if Configuration.debugging
        Configuration.logger.debug "API called: SnapshotsApi#v2_snapshots_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




