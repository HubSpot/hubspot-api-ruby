=begin
#Imports

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Imports
      class CoreApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Cancel an active import
        # This allows a developer to cancel an active import.
        # @param import_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [ActionResponse]
        def cancel(import_id, opts = {})
          data, _status_code, _headers = cancel_with_http_info(import_id, opts)
          data
        end

        # Cancel an active import
        # This allows a developer to cancel an active import.
        # @param import_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(ActionResponse, Integer, Hash)>] ActionResponse data, response status code and response headers
        def cancel_with_http_info(import_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.cancel ...'
          end
          # verify the required parameter 'import_id' is set
          if @api_client.config.client_side_validation && import_id.nil?
            fail ArgumentError, "Missing the required parameter 'import_id' when calling CoreApi.cancel"
          end
          # resource path
          local_var_path = '/crm/v3/imports/{importId}/cancel'.sub('{' + 'importId' + '}', CGI.escape(import_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ActionResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"CoreApi.cancel",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: CoreApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Start a new import
        # Begins importing data from the specified file resources. This uploads the corresponding file and uses the import request object to convert rows in the files to objects.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :files 
        # @option opts [String] :import_request 
        # @return [PublicImportResponse]
        def create(opts = {})
          data, _status_code, _headers = create_with_http_info(opts)
          data
        end

        # Start a new import
        # Begins importing data from the specified file resources. This uploads the corresponding file and uses the import request object to convert rows in the files to objects.
        # @param [Hash] opts the optional parameters
        # @option opts [File] :files 
        # @option opts [String] :import_request 
        # @return [Array<(PublicImportResponse, Integer, Hash)>] PublicImportResponse data, response status code and response headers
        def create_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.create ...'
          end
          # resource path
          local_var_path = '/crm/v3/imports/'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['multipart/form-data'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}
          form_params['files'] = opts[:'files'] if !opts[:'files'].nil?
          form_params['importRequest'] = opts[:'import_request'] if !opts[:'import_request'].nil?

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'PublicImportResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"CoreApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: CoreApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get the information on any import
        # A complete summary of an import record, including any updates.
        # @param import_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [PublicImportResponse]
        def get_by_id(import_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(import_id, opts)
          data
        end

        # Get the information on any import
        # A complete summary of an import record, including any updates.
        # @param import_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(PublicImportResponse, Integer, Hash)>] PublicImportResponse data, response status code and response headers
        def get_by_id_with_http_info(import_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.get_by_id ...'
          end
          # verify the required parameter 'import_id' is set
          if @api_client.config.client_side_validation && import_id.nil?
            fail ArgumentError, "Missing the required parameter 'import_id' when calling CoreApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/imports/{importId}'.sub('{' + 'importId' + '}', CGI.escape(import_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'PublicImportResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"CoreApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: CoreApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get active imports
        # Returns a paged list of active imports for this account.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [String] :before 
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @return [CollectionResponsePublicImportResponse]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # Get active imports
        # Returns a paged list of active imports for this account.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [String] :before 
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @return [Array<(CollectionResponsePublicImportResponse, Integer, Hash)>] CollectionResponsePublicImportResponse data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.get_page ...'
          end
          # resource path
          local_var_path = '/crm/v3/imports/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponsePublicImportResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"CoreApi.get_page",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: CoreApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
