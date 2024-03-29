=begin
#Business Units

#Retrieve Business Unit information.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Settings
    module BusinessUnits
      class BusinessUnitApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Get Business Units for a user
        # Get Business Units identified by `userId`. The `userId` refers to the user’s ID.
        # @param user_id [String] Identifier of user to retrieve.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties The names of properties to optionally include in the response body. The only valid value is &#x60;logoMetadata&#x60;.
        # @option opts [Array<String>] :name The names of Business Units to retrieve. If empty or not provided, then all associated Business Units will be returned.
        # @return [CollectionResponsePublicBusinessUnitNoPaging]
        def get_by_user_id(user_id, opts = {})
          data, _status_code, _headers = get_by_user_id_with_http_info(user_id, opts)
          data
        end

        # Get Business Units for a user
        # Get Business Units identified by &#x60;userId&#x60;. The &#x60;userId&#x60; refers to the user’s ID.
        # @param user_id [String] Identifier of user to retrieve.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties The names of properties to optionally include in the response body. The only valid value is &#x60;logoMetadata&#x60;.
        # @option opts [Array<String>] :name The names of Business Units to retrieve. If empty or not provided, then all associated Business Units will be returned.
        # @return [Array<(CollectionResponsePublicBusinessUnitNoPaging, Integer, Hash)>] CollectionResponsePublicBusinessUnitNoPaging data, response status code and response headers
        def get_by_user_id_with_http_info(user_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BusinessUnitApi.get_by_user_id ...'
          end
          # verify the required parameter 'user_id' is set
          if @api_client.config.client_side_validation && user_id.nil?
            fail ArgumentError, "Missing the required parameter 'user_id' when calling BusinessUnitApi.get_by_user_id"
          end
          # resource path
          local_var_path = '/business-units/v3/business-units/user/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :csv) if !opts[:'properties'].nil?
          query_params[:'name'] = @api_client.build_collection_param(opts[:'name'], :multi) if !opts[:'name'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponsePublicBusinessUnitNoPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BusinessUnitApi.get_by_user_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BusinessUnitApi#get_by_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
