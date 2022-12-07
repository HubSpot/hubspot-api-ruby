=begin
#Calling Extensions API

#Provides a way for apps to add custom calling options to a contact record. This works in conjunction with the [Calling SDK](#), which is used to build your phone/calling UI. The endpoints here allow your service to appear as an option to HubSpot users when they access the *Call* action on a contact record. Once accessed, your custom phone/calling UI will be displayed in an iframe at the specified URL with the specified dimensions on that record.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Extensions
      module Calling
        class SettingsApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Delete calling settings
          # Deletes this calling extension. This will remove your service as an option for all connected accounts.
          # @param app_id [Integer] The ID of the target app.
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def archive(app_id, opts = {})
            archive_with_http_info(app_id, opts)
            nil
          end

          # Delete calling settings
          # Deletes this calling extension. This will remove your service as an option for all connected accounts.
          # @param app_id [Integer] The ID of the target app.
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_with_http_info(app_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SettingsApi.archive ...'
            end
            # verify the required parameter 'app_id' is set
            if @api_client.config.client_side_validation && app_id.nil?
              fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.archive"
            end
            # resource path
            local_var_path = '/crm/v3/extensions/calling/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] 

            # auth_names
            auth_names = opts[:auth_names] || ['developer_hapikey']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: SettingsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Configure a calling extension
          # Used to set the menu label, target iframe URL, and dimensions for your calling extension.
          # @param app_id [Integer] The ID of the target app.
          # @param settings_request [SettingsRequest] Settings state to create with.
          # @param [Hash] opts the optional parameters
          # @return [SettingsResponse]
          def create(app_id, settings_request, opts = {})
            data, _status_code, _headers = create_with_http_info(app_id, settings_request, opts)
            data
          end

          # Configure a calling extension
          # Used to set the menu label, target iframe URL, and dimensions for your calling extension.
          # @param app_id [Integer] The ID of the target app.
          # @param settings_request [SettingsRequest] Settings state to create with.
          # @param [Hash] opts the optional parameters
          # @return [Array<(SettingsResponse, Integer, Hash)>] SettingsResponse data, response status code and response headers
          def create_with_http_info(app_id, settings_request, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SettingsApi.create ...'
            end
            # verify the required parameter 'app_id' is set
            if @api_client.config.client_side_validation && app_id.nil?
              fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.create"
            end
            # verify the required parameter 'settings_request' is set
            if @api_client.config.client_side_validation && settings_request.nil?
              fail ArgumentError, "Missing the required parameter 'settings_request' when calling SettingsApi.create"
            end
            # resource path
            local_var_path = '/crm/v3/extensions/calling/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
            post_body = opts[:body] || @api_client.object_to_http_body(settings_request) 

            # return_type
            return_type = opts[:return_type] || 'SettingsResponse' 

            # auth_names
            auth_names = opts[:auth_names] || ['developer_hapikey']

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
              @api_client.config.logger.debug "API called: SettingsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Get calling settings
          # Returns the calling extension settings configured for your app.
          # @param app_id [Integer] The ID of the target app.
          # @param [Hash] opts the optional parameters
          # @return [SettingsResponse]
          def get_by_id(app_id, opts = {})
            data, _status_code, _headers = get_by_id_with_http_info(app_id, opts)
            data
          end

          # Get calling settings
          # Returns the calling extension settings configured for your app.
          # @param app_id [Integer] The ID of the target app.
          # @param [Hash] opts the optional parameters
          # @return [Array<(SettingsResponse, Integer, Hash)>] SettingsResponse data, response status code and response headers
          def get_by_id_with_http_info(app_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SettingsApi.get_by_id ...'
            end
            # verify the required parameter 'app_id' is set
            if @api_client.config.client_side_validation && app_id.nil?
              fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.get_by_id"
            end
            # resource path
            local_var_path = '/crm/v3/extensions/calling/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] || 'SettingsResponse' 

            # auth_names
            auth_names = opts[:auth_names] || ['developer_hapikey']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: SettingsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Update settings
          # Updates existing calling extension settings.
          # @param app_id [Integer] The ID of the target app.
          # @param settings_patch_request [SettingsPatchRequest] Updated details for the settings.
          # @param [Hash] opts the optional parameters
          # @return [SettingsResponse]
          def update(app_id, settings_patch_request, opts = {})
            data, _status_code, _headers = update_with_http_info(app_id, settings_patch_request, opts)
            data
          end

          # Update settings
          # Updates existing calling extension settings.
          # @param app_id [Integer] The ID of the target app.
          # @param settings_patch_request [SettingsPatchRequest] Updated details for the settings.
          # @param [Hash] opts the optional parameters
          # @return [Array<(SettingsResponse, Integer, Hash)>] SettingsResponse data, response status code and response headers
          def update_with_http_info(app_id, settings_patch_request, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SettingsApi.update ...'
            end
            # verify the required parameter 'app_id' is set
            if @api_client.config.client_side_validation && app_id.nil?
              fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.update"
            end
            # verify the required parameter 'settings_patch_request' is set
            if @api_client.config.client_side_validation && settings_patch_request.nil?
              fail ArgumentError, "Missing the required parameter 'settings_patch_request' when calling SettingsApi.update"
            end
            # resource path
            local_var_path = '/crm/v3/extensions/calling/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
            post_body = opts[:body] || @api_client.object_to_http_body(settings_patch_request) 

            # return_type
            return_type = opts[:return_type] || 'SettingsResponse' 

            # auth_names
            auth_names = opts[:auth_names] || ['developer_hapikey']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: SettingsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
