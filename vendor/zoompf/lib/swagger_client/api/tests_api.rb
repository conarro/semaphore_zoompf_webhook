require "uri"

module SwaggerClient
  class TestsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get Performance Tests
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :p_order_by (Optional) Order By Field, defeaults to test_id
    # @option opts [BOOLEAN] :p_order_asc (Optional) Order Ascending or Descending: Defaults to false (Descending)
    # @option opts [Integer] :p_page (Optional) Page number, Starting at 1
    # @option opts [Integer] :p_per_page (Optional) Maximum results per page. Defaults to 50.
    # @return [TestList]
    def v2_tests_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TestsApi#v2_tests_get ..."
      end
      
      if opts[:'p_order_by'] && !['PerformanceTestID', 'Name', 'CreatedUTC', 'SnapshotCount'].include?(opts[:'p_order_by'])
        fail 'invalid value for "p_order_by", must be one of PerformanceTestID, Name, CreatedUTC, SnapshotCount'
      end
      
      # resource path
      path = "/v2/tests".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'TestList')
      if Configuration.debugging
        Configuration.logger.debug "API called: TestsApi#v2_tests_get. Result: #{result.inspect}"
      end
      return result
    end

    # Create a New Test
    # 
    # @param test_detail New Test details
    # @param [Hash] opts the optional parameters
    # @return [TestSummary]
    def v2_tests_post(test_detail, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TestsApi#v2_tests_post ..."
      end
      
      # verify the required parameter 'test_detail' is set
      fail "Missing the required parameter 'test_detail' when calling v2_tests_post" if test_detail.nil?
      
      # resource path
      path = "/v2/tests".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(test_detail)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TestSummary')
      if Configuration.debugging
        Configuration.logger.debug "API called: TestsApi#v2_tests_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Test Detail
    # 
    # @param test_id ID of the test to get detail
    # @param [Hash] opts the optional parameters
    # @return [TestDetail]
    def v2_tests_get_1(test_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TestsApi#v2_tests_get_1 ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_tests_get_1" if test_id.nil?
      
      # resource path
      path = "/v2/tests/{test_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s)

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
        :return_type => 'TestDetail')
      if Configuration.debugging
        Configuration.logger.debug "API called: TestsApi#v2_tests_get_1. Result: #{result.inspect}"
      end
      return result
    end

    # Update Existing Test
    # 
    # @param test_id ID of the test to update
    # @param test_detail Updated Test details
    # @param [Hash] opts the optional parameters
    # @return [APIResult]
    def v2_tests_put(test_id, test_detail, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TestsApi#v2_tests_put ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_tests_put" if test_id.nil?
      
      # verify the required parameter 'test_detail' is set
      fail "Missing the required parameter 'test_detail' when calling v2_tests_put" if test_detail.nil?
      
      # resource path
      path = "/v2/tests/{test_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s)

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
      post_body = @api_client.object_to_http_body(test_detail)
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIResult')
      if Configuration.debugging
        Configuration.logger.debug "API called: TestsApi#v2_tests_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete a Test
    # 
    # @param test_id ID of the test to delete
    # @param [Hash] opts the optional parameters
    # @return [APIResult]
    def v2_tests_delete(test_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TestsApi#v2_tests_delete ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_tests_delete" if test_id.nil?
      
      # resource path
      path = "/v2/tests/{test_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s)

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
        Configuration.logger.debug "API called: TestsApi#v2_tests_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




