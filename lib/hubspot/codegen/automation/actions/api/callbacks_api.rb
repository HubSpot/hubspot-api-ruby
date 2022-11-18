=begin
#Custom Workflow Actions

#Create custom workflow actions

The version of the OpenAPI document: v4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Automation
    module Actions
      class CallbacksApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Complete a callback
        # Completes the given action callback.
        # @param callback_id [String] The ID of the target app.
        # @param callback_completion_request [CallbackCompletionRequest] The result of the completed action.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def complete(callback_id, callback_completion_request, opts = {})
          complete_with_http_info(callback_id, callback_completion_request, opts)
          nil
        end

        # Complete a callback
        # Completes the given action callback.
        # @param callback_id [String] The ID of the target app.
        # @param callback_completion_request [CallbackCompletionRequest] The result of the completed action.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def complete_with_http_info(callback_id, callback_completion_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CallbacksApi.complete ...'
          end
          # verify the required parameter 'callback_id' is set
          if @api_client.config.client_side_validation && callback_id.nil?
            fail ArgumentError, "Missing the required parameter 'callback_id' when calling CallbacksApi.complete"
          end
          # verify the required parameter 'callback_completion_request' is set
          if @api_client.config.client_side_validation && callback_completion_request.nil?
            fail ArgumentError, "Missing the required parameter 'callback_completion_request' when calling CallbacksApi.complete"
          end
          # resource path
          local_var_path = '/automation/v4/actions/callbacks/{callbackId}/complete'.sub('{' + 'callbackId' + '}', CGI.escape(callback_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(callback_completion_request) 

          # return_type
          return_type = opts[:return_type] 

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
            @api_client.config.logger.debug "API called: CallbacksApi#complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Complete a batch of callbacks
        # Completes the given action callbacks.
        # @param batch_input_callback_completion_batch_request [BatchInputCallbackCompletionBatchRequest] The result of the completed action.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def complete_batch(batch_input_callback_completion_batch_request, opts = {})
          complete_batch_with_http_info(batch_input_callback_completion_batch_request, opts)
          nil
        end

        # Complete a batch of callbacks
        # Completes the given action callbacks.
        # @param batch_input_callback_completion_batch_request [BatchInputCallbackCompletionBatchRequest] The result of the completed action.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def complete_batch_with_http_info(batch_input_callback_completion_batch_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CallbacksApi.complete_batch ...'
          end
          # verify the required parameter 'batch_input_callback_completion_batch_request' is set
          if @api_client.config.client_side_validation && batch_input_callback_completion_batch_request.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_callback_completion_batch_request' when calling CallbacksApi.complete_batch"
          end
          # resource path
          local_var_path = '/automation/v4/actions/callbacks/complete'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(batch_input_callback_completion_batch_request) 

          # return_type
          return_type = opts[:return_type] 

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
            @api_client.config.logger.debug "API called: CallbacksApi#complete_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
