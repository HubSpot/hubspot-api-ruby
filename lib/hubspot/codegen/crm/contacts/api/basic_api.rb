=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Contacts
        module Api
          class BasicApi
            include Hubspot::Helpers::GetAllHelper

            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive
            # Move an Object identified by `{contactId}` to the recycling bin.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def archive(contact_id, opts = {})
              archive_with_http_info(contact_id, opts)
              nil
            end

            # Archive
            # Move an Object identified by &#x60;{contactId}&#x60; to the recycling bin.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_with_http_info(contact_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BasicApi.archive ...'
              end
              # verify the required parameter 'contact_id' is set
              if @api_client.config.client_side_validation && contact_id.nil?
                fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.archive"
              end
              # resource path
              local_var_path = '/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s).gsub('%2F', '/'))

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
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
                @api_client.config.logger.debug "API called: BasicApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create
            # Create a contact with the given properties and return a copy of the object, including the ID. Documentation and examples for creating native contacts is provided.
            # @param [Hash] opts the optional parameters
            # @option opts [SimplePublicObjectInput] :simple_public_object_input 
            # @return [SimplePublicObject]
            def create(opts = {})
              data, _status_code, _headers = create_with_http_info(opts)
              data
            end

            # Create
            # Create a contact with the given properties and return a copy of the object, including the ID. Documentation and examples for creating native contacts is provided.
            # @param [Hash] opts the optional parameters
            # @option opts [SimplePublicObjectInput] :simple_public_object_input 
            # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
            def create_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
              end
              # resource path
              local_var_path = '/contacts'

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
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'simple_public_object_input']) 

              # return_type
              return_type = opts[:return_type] || 'SimplePublicObject' 

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
                @api_client.config.logger.debug "API called: BasicApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read
            # Read an Object identified by `{contactId}`. Control what is returned via the `properties` query param.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
            # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [SimplePublicObject]
            def get_by_id(contact_id, opts = {})
              data, _status_code, _headers = get_by_id_with_http_info(contact_id, opts)
              data
            end

            # Read
            # Read an Object identified by &#x60;{contactId}&#x60;. Control what is returned via the &#x60;properties&#x60; query param.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
            # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
            def get_by_id_with_http_info(contact_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BasicApi.get_by_id ...'
              end
              # verify the required parameter 'contact_id' is set
              if @api_client.config.client_side_validation && contact_id.nil?
                fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.get_by_id"
              end
              # resource path
              local_var_path = '/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s).gsub('%2F', '/'))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
              query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'SimplePublicObject' 

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

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BasicApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # List
            # Read a page of contacts. Control what is returned via the `properties` query param.
            # @param [Hash] opts the optional parameters
            # @option opts [Integer] :limit The maximum number of results to display per page. (default to 10)
            # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
            # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
            # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [CollectionResponseSimplePublicObject]
            def get_page(opts = {})
              data, _status_code, _headers = get_page_with_http_info(opts)
              data
            end

            # List
            # Read a page of contacts. Control what is returned via the &#x60;properties&#x60; query param.
            # @param [Hash] opts the optional parameters
            # @option opts [Integer] :limit The maximum number of results to display per page.
            # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
            # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
            # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(CollectionResponseSimplePublicObject, Integer, Hash)>] CollectionResponseSimplePublicObject data, response status code and response headers
            def get_page_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BasicApi.get_page ...'
              end
              # resource path
              local_var_path = '/contacts'

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
              query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
              query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
              query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'CollectionResponseSimplePublicObject' 

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

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BasicApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update
            # Perform a partial update of an Object identified by `{contactId}`. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [SimplePublicObjectInput] :simple_public_object_input 
            # @return [SimplePublicObject]
            def update(contact_id, opts = {})
              data, _status_code, _headers = update_with_http_info(contact_id, opts)
              data
            end

            # Update
            # Perform a partial update of an Object identified by &#x60;{contactId}&#x60;. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
            # @param contact_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [SimplePublicObjectInput] :simple_public_object_input 
            # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
            def update_with_http_info(contact_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
              end
              # verify the required parameter 'contact_id' is set
              if @api_client.config.client_side_validation && contact_id.nil?
                fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.update"
              end
              # resource path
              local_var_path = '/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s).gsub('%2F', '/'))

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
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'simple_public_object_input']) 

              # return_type
              return_type = opts[:return_type] || 'SimplePublicObject' 

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

              data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BasicApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end