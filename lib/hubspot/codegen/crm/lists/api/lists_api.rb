=begin
#Lists

#CRUD operations to manage lists and list memberships

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Lists
      class ListsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Create List
        # Create a new list with the provided object list definition.
        # @param list_create_request [ListCreateRequest] 
        # @param [Hash] opts the optional parameters
        # @return [ListCreateResponse]
        def create(list_create_request, opts = {})
          data, _status_code, _headers = create_with_http_info(list_create_request, opts)
          data
        end

        # Create List
        # Create a new list with the provided object list definition.
        # @param list_create_request [ListCreateRequest] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(ListCreateResponse, Integer, Hash)>] ListCreateResponse data, response status code and response headers
        def create_with_http_info(list_create_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.create ...'
          end
          # verify the required parameter 'list_create_request' is set
          if @api_client.config.client_side_validation && list_create_request.nil?
            fail ArgumentError, "Missing the required parameter 'list_create_request' when calling ListsApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/lists/'

          # query parameters
          query_params = opts[:query_params] || {}

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(list_create_request)

          # return_type
          return_type = opts[:debug_return_type] || 'ListCreateResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Search Lists
        # Search lists by list name or page through all lists by providing an empty `query` value.
        # @param list_search_request [ListSearchRequest] The IDs of the records to add and/or remove from the list.
        # @param [Hash] opts the optional parameters
        # @return [ListSearchResponse]
        def do_search(list_search_request, opts = {})
          data, _status_code, _headers = do_search_with_http_info(list_search_request, opts)
          data
        end

        # Search Lists
        # Search lists by list name or page through all lists by providing an empty &#x60;query&#x60; value.
        # @param list_search_request [ListSearchRequest] The IDs of the records to add and/or remove from the list.
        # @param [Hash] opts the optional parameters
        # @return [Array<(ListSearchResponse, Integer, Hash)>] ListSearchResponse data, response status code and response headers
        def do_search_with_http_info(list_search_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.do_search ...'
          end
          # verify the required parameter 'list_search_request' is set
          if @api_client.config.client_side_validation && list_search_request.nil?
            fail ArgumentError, "Missing the required parameter 'list_search_request' when calling ListsApi.do_search"
          end
          # resource path
          local_var_path = '/crm/v3/lists/search'

          # query parameters
          query_params = opts[:query_params] || {}

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(list_search_request)

          # return_type
          return_type = opts[:debug_return_type] || 'ListSearchResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.do_search",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Fetch Multiple Lists
        # Fetch multiple lists in a single request by **ILS list ID**. The response will include the definitions of all lists that exist for the `listIds` provided.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<Integer>] :list_ids The **ILS IDs** of the lists to fetch.
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definitions should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [ListsByIdResponse]
        def get_all(opts = {})
          data, _status_code, _headers = get_all_with_http_info(opts)
          data
        end

        # Fetch Multiple Lists
        # Fetch multiple lists in a single request by **ILS list ID**. The response will include the definitions of all lists that exist for the &#x60;listIds&#x60; provided.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<Integer>] :list_ids The **ILS IDs** of the lists to fetch.
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definitions should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [Array<(ListsByIdResponse, Integer, Hash)>] ListsByIdResponse data, response status code and response headers
        def get_all_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.get_all ...'
          end
          # resource path
          local_var_path = '/crm/v3/lists/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'listIds'] = @api_client.build_collection_param(opts[:'list_ids'], :multi) if !opts[:'list_ids'].nil?
          query_params[:'includeFilters'] = opts[:'include_filters'] if !opts[:'include_filters'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ListsByIdResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.get_all",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Fetch List by ID
        # Fetch a single list by **ILS list ID**.
        # @param list_id [Integer] The **ILS ID** of the list to fetch.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [ListFetchResponse]
        def get_by_id(list_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(list_id, opts)
          data
        end

        # Fetch List by ID
        # Fetch a single list by **ILS list ID**.
        # @param list_id [Integer] The **ILS ID** of the list to fetch.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [Array<(ListFetchResponse, Integer, Hash)>] ListFetchResponse data, response status code and response headers
        def get_by_id_with_http_info(list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.get_by_id ...'
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/lists/{listId}'.sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'includeFilters'] = opts[:'include_filters'] if !opts[:'include_filters'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ListFetchResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Fetch List by Name
        # Fetch a single list by list name and object type.
        # @param list_name [String] The name of the list to fetch. This is **not** case sensitive.
        # @param object_type_id [String] The object type ID of the object types stored by the list to fetch. For example, &#x60;0-1&#x60; for a &#x60;CONTACT&#x60; list.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [ListFetchResponse]
        def get_by_name(list_name, object_type_id, opts = {})
          data, _status_code, _headers = get_by_name_with_http_info(list_name, object_type_id, opts)
          data
        end

        # Fetch List by Name
        # Fetch a single list by list name and object type.
        # @param list_name [String] The name of the list to fetch. This is **not** case sensitive.
        # @param object_type_id [String] The object type ID of the object types stored by the list to fetch. For example, &#x60;0-1&#x60; for a &#x60;CONTACT&#x60; list.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [Array<(ListFetchResponse, Integer, Hash)>] ListFetchResponse data, response status code and response headers
        def get_by_name_with_http_info(list_name, object_type_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.get_by_name ...'
          end
          # verify the required parameter 'list_name' is set
          if @api_client.config.client_side_validation && list_name.nil?
            fail ArgumentError, "Missing the required parameter 'list_name' when calling ListsApi.get_by_name"
          end
          # verify the required parameter 'object_type_id' is set
          if @api_client.config.client_side_validation && object_type_id.nil?
            fail ArgumentError, "Missing the required parameter 'object_type_id' when calling ListsApi.get_by_name"
          end
          # resource path
          local_var_path = '/crm/v3/lists/object-type-id/{objectTypeId}/name/{listName}'.sub('{' + 'listName' + '}', CGI.escape(list_name.to_s)).sub('{' + 'objectTypeId' + '}', CGI.escape(object_type_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'includeFilters'] = opts[:'include_filters'] if !opts[:'include_filters'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ListFetchResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.get_by_name",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#get_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Delete a List
        # Delete a list by **ILS list ID**. Lists deleted through this endpoint can be restored up to 90-days following the delete. After 90-days, the list is purged and can no longer be restored.
        # @param list_id [Integer] The **ILS ID** of the list to delete.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def remove(list_id, opts = {})
          remove_with_http_info(list_id, opts)
          nil
        end

        # Delete a List
        # Delete a list by **ILS list ID**. Lists deleted through this endpoint can be restored up to 90-days following the delete. After 90-days, the list is purged and can no longer be restored.
        # @param list_id [Integer] The **ILS ID** of the list to delete.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def remove_with_http_info(list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.remove ...'
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.remove"
          end
          # resource path
          local_var_path = '/crm/v3/lists/{listId}'.sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.remove",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Restore a List
        # Restore a previously deleted list by **ILS list ID**. Deleted lists are eligible to be restored up-to 90-days after the list has been deleted.
        # @param list_id [Integer] The **ILS ID** of the list to restore.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def restore(list_id, opts = {})
          restore_with_http_info(list_id, opts)
          nil
        end

        # Restore a List
        # Restore a previously deleted list by **ILS list ID**. Deleted lists are eligible to be restored up-to 90-days after the list has been deleted.
        # @param list_id [Integer] The **ILS ID** of the list to restore.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def restore_with_http_info(list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.restore ...'
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.restore"
          end
          # resource path
          local_var_path = '/crm/v3/lists/{listId}/restore'.sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.restore",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#restore\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update List Filter Definition
        # Update the filter branch definition of a `DYNAMIC` list. Once updated, the list memberships will be re-evaluated and updated to match the new definition.
        # @param list_id [Integer] The **ILS ID** of the list to update.
        # @param list_filter_update_request [ListFilterUpdateRequest] 
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :enroll_objects_in_workflows A flag indicating whether or not the memberships added to the list as a result of the filter change should be enrolled in workflows that are relevant to this list. (default to false)
        # @return [ListUpdateResponse]
        def update_list_filters(list_id, list_filter_update_request, opts = {})
          data, _status_code, _headers = update_list_filters_with_http_info(list_id, list_filter_update_request, opts)
          data
        end

        # Update List Filter Definition
        # Update the filter branch definition of a &#x60;DYNAMIC&#x60; list. Once updated, the list memberships will be re-evaluated and updated to match the new definition.
        # @param list_id [Integer] The **ILS ID** of the list to update.
        # @param list_filter_update_request [ListFilterUpdateRequest] 
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :enroll_objects_in_workflows A flag indicating whether or not the memberships added to the list as a result of the filter change should be enrolled in workflows that are relevant to this list. (default to false)
        # @return [Array<(ListUpdateResponse, Integer, Hash)>] ListUpdateResponse data, response status code and response headers
        def update_list_filters_with_http_info(list_id, list_filter_update_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.update_list_filters ...'
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.update_list_filters"
          end
          # verify the required parameter 'list_filter_update_request' is set
          if @api_client.config.client_side_validation && list_filter_update_request.nil?
            fail ArgumentError, "Missing the required parameter 'list_filter_update_request' when calling ListsApi.update_list_filters"
          end
          # resource path
          local_var_path = '/crm/v3/lists/{listId}/update-list-filters'.sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'enrollObjectsInWorkflows'] = opts[:'enroll_objects_in_workflows'] if !opts[:'enroll_objects_in_workflows'].nil?

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(list_filter_update_request)

          # return_type
          return_type = opts[:debug_return_type] || 'ListUpdateResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.update_list_filters",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#update_list_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update List Name
        # Update the name of a list. The name must be globally unique relative to all other public lists in the portal.
        # @param list_id [Integer] The **ILS ID** of the list to update.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :list_name The name to update the list to.
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [ListUpdateResponse]
        def update_name(list_id, opts = {})
          data, _status_code, _headers = update_name_with_http_info(list_id, opts)
          data
        end

        # Update List Name
        # Update the name of a list. The name must be globally unique relative to all other public lists in the portal.
        # @param list_id [Integer] The **ILS ID** of the list to update.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :list_name The name to update the list to.
        # @option opts [Boolean] :include_filters A flag indicating whether or not the response object list definition should include a filter branch definition. By default, object list definitions will not have their filter branch definitions included in the response. (default to false)
        # @return [Array<(ListUpdateResponse, Integer, Hash)>] ListUpdateResponse data, response status code and response headers
        def update_name_with_http_info(list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListsApi.update_name ...'
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.update_name"
          end
          # resource path
          local_var_path = '/crm/v3/lists/{listId}/update-list-name'.sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'listName'] = opts[:'list_name'] if !opts[:'list_name'].nil?
          query_params[:'includeFilters'] = opts[:'include_filters'] if !opts[:'include_filters'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ListUpdateResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListsApi.update_name",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListsApi#update_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end