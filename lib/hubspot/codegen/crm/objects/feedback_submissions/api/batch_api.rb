=begin
#Feedback Submissions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      module FeedbackSubmissions
        class BatchApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Read a batch of feedback submissions by internal ID, or unique property values
          # Retrieve records by record ID or include the `idProperty` parameter to retrieve records by a custom unique value property. 
          # @param batch_read_input_simple_public_object_id [BatchReadInputSimplePublicObjectId] 
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
          # @return [BatchResponseSimplePublicObject]
          def read(batch_read_input_simple_public_object_id, opts = {})
            data, _status_code, _headers = read_with_http_info(batch_read_input_simple_public_object_id, opts)
            data
          end

          # Read a batch of feedback submissions by internal ID, or unique property values
          # Retrieve records by record ID or include the &#x60;idProperty&#x60; parameter to retrieve records by a custom unique value property. 
          # @param batch_read_input_simple_public_object_id [BatchReadInputSimplePublicObjectId] 
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
          # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
          def read_with_http_info(batch_read_input_simple_public_object_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: BatchApi.read ...'
            end
            # verify the required parameter 'batch_read_input_simple_public_object_id' is set
            if @api_client.config.client_side_validation && batch_read_input_simple_public_object_id.nil?
              fail ArgumentError, "Missing the required parameter 'batch_read_input_simple_public_object_id' when calling BatchApi.read"
            end
            # resource path
            local_var_path = '/crm/v3/objects/feedback_submissions/batch/read'

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            content_type = @api_client.select_header_content_type(['application/json'])
            if !content_type.nil?
                header_params['Content-Type'] = content_type
            end

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_read_input_simple_public_object_id)

            # return_type
            return_type = opts[:debug_return_type] || 'BatchResponseSimplePublicObject'

            # auth_names
            auth_names = opts[:debug_auth_names] || ['oauth2']

            new_options = opts.merge(
              :operation => :"BatchApi.read",
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: BatchApi#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
