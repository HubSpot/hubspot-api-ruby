=begin
#Taxes

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      module Taxes
        class GDPRApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # GDPR DELETE
          # Permanently delete a contact and all associated content to follow GDPR. Use optional property 'idProperty' set to 'email' to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future.
          # @param public_gdpr_delete_input [PublicGdprDeleteInput] 
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def purge(public_gdpr_delete_input, opts = {})
            purge_with_http_info(public_gdpr_delete_input, opts)
            nil
          end

          # GDPR DELETE
          # Permanently delete a contact and all associated content to follow GDPR. Use optional property &#39;idProperty&#39; set to &#39;email&#39; to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future.
          # @param public_gdpr_delete_input [PublicGdprDeleteInput] 
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def purge_with_http_info(public_gdpr_delete_input, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: GDPRApi.purge ...'
            end
            # verify the required parameter 'public_gdpr_delete_input' is set
            if @api_client.config.client_side_validation && public_gdpr_delete_input.nil?
              fail ArgumentError, "Missing the required parameter 'public_gdpr_delete_input' when calling GDPRApi.purge"
            end
            # resource path
            local_var_path = '/crm/v3/objects/taxes/gdpr-delete'

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(public_gdpr_delete_input)

            # return_type
            return_type = opts[:debug_return_type]

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"GDPRApi.purge",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: GDPRApi#purge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
