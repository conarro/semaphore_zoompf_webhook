require "uri"

module SwaggerClient
  class ContentApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get Content Items
    # 
    # @param test_id ID of the test for which to fetch content
    # @param snapshot_id ID of the snapshot for which to fetch content
    # @param [Hash] opts the optional parameters
    # @option opts [String] :f_file_type (Optional) Filter by file type (Defaults to all files).
    # @option opts [String] :f_show_tpc (Optional) Show defects only for Third Party Content. Defaults to First Party only (No). Set Yes for Third Party only, or Unknown for all defects.
    # @option opts [String] :p_order_by (Optional) Order By Field, defeaults to BodySize
    # @option opts [BOOLEAN] :p_order_asc (Optional) Order Ascending or Descending: Defaults to false (Descending)
    # @option opts [Integer] :p_page (Optional) Page number, Starting at 1
    # @option opts [Integer] :p_per_page (Optional) Maximum results per page. Defaults to 50.
    # @return [ContentList]
    def v2_content_get(test_id, snapshot_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ContentApi#v2_content_get ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_content_get" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_content_get" if snapshot_id.nil?
      
      if opts[:'f_file_type'] && !['Unknown', 'GenericText', 'GenericBinary', 'XBM', 'ICO', 'PNG', 'GIF', 'JPG', 'BMP', 'WEBP', 'TIFF', 'SVG', 'MP4', 'OggV', 'WebM', 'EOT', 'TTF', 'OTF', 'WOFF', 'WOFF2', 'SVGFont', 'Flash', 'AtomFeed', 'CSS', 'HTML', 'JavaScript', 'RobotsText', 'RSS', 'HTC', 'XAP', 'ZIP'].include?(opts[:'f_file_type'])
        fail 'invalid value for "f_file_type", must be one of Unknown, GenericText, GenericBinary, XBM, ICO, PNG, GIF, JPG, BMP, WEBP, TIFF, SVG, MP4, OggV, WebM, EOT, TTF, OTF, WOFF, WOFF2, SVGFont, Flash, AtomFeed, CSS, HTML, JavaScript, RobotsText, RSS, HTC, XAP, ZIP'
      end
      
      if opts[:'f_show_tpc'] && !['Unknown', 'No', 'Yes'].include?(opts[:'f_show_tpc'])
        fail 'invalid value for "f_show_tpc", must be one of Unknown, No, Yes'
      end
      
      if opts[:'p_order_by'] && !['BodySize', 'FileType', 'Url'].include?(opts[:'p_order_by'])
        fail 'invalid value for "p_order_by", must be one of BodySize, FileType, Url'
      end
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}/content".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'f.file_type'] = opts[:'f_file_type'] if opts[:'f_file_type']
      query_params[:'f.show_tpc'] = opts[:'f_show_tpc'] if opts[:'f_show_tpc']
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
        :return_type => 'ContentList')
      if Configuration.debugging
        Configuration.logger.debug "API called: ContentApi#v2_content_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get Content Detail
    # 
    # @param test_id ID of the test owning this snapshot
    # @param snapshot_id ID of the Snapshot
    # @param content_id ID of the Content Item
    # @param [Hash] opts the optional parameters
    # @return [ContentDetail]
    def v2_content_get_1(test_id, snapshot_id, content_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ContentApi#v2_content_get_1 ..."
      end
      
      # verify the required parameter 'test_id' is set
      fail "Missing the required parameter 'test_id' when calling v2_content_get_1" if test_id.nil?
      
      # verify the required parameter 'snapshot_id' is set
      fail "Missing the required parameter 'snapshot_id' when calling v2_content_get_1" if snapshot_id.nil?
      
      # verify the required parameter 'content_id' is set
      fail "Missing the required parameter 'content_id' when calling v2_content_get_1" if content_id.nil?
      
      # resource path
      path = "/v2/tests/{test_id}/snapshots/{snapshot_id}/content/{content_id}".sub('{format}','json').sub('{' + 'test_id' + '}', test_id.to_s).sub('{' + 'snapshot_id' + '}', snapshot_id.to_s).sub('{' + 'content_id' + '}', content_id.to_s)

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
        :return_type => 'ContentDetail')
      if Configuration.debugging
        Configuration.logger.debug "API called: ContentApi#v2_content_get_1. Result: #{result.inspect}"
      end
      return result
    end
  end
end




