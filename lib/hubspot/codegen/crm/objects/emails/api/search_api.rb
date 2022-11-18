=begin
#Emails

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      module Emails
        class SearchApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # @param public_object_search_request [PublicObjectSearchRequest] 
          # @param [Hash] opts the optional parameters
          # @return [CollectionResponseWithTotalSimplePublicObjectForwardPaging]
          def do_search(public_object_search_request, opts = {})
            data, _status_code, _headers = do_search_with_http_info(public_object_search_request, opts)
            data
          end

          # @param public_object_search_request [PublicObjectSearchRequest] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(CollectionResponseWithTotalSimplePublicObjectForwardPaging, Integer, Hash)>] CollectionResponseWithTotalSimplePublicObjectForwardPaging data, response status code and response headers
          def do_search_with_http_info(public_object_search_request, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SearchApi.do_search ...'
            end
            # verify the required parameter 'public_object_search_request' is set
            if @api_client.config.client_side_validation && public_object_search_request.nil?
              fail ArgumentError, "Missing the required parameter 'public_object_search_request' when calling SearchApi.do_search"
            end
            # resource path
            local_var_path = '/crm/v3/objects/emails/search'

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(public_object_search_request) 

            # return_type
            return_type = opts[:return_type] || 'CollectionResponseWithTotalSimplePublicObjectForwardPaging' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: SearchApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
