=begin
#Files

#Upload and manage files.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Files
    module Files
      class FoldersApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete folder.
        # Delete folder by ID.
        # @param folder_id [String] ID of folder to delete.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(folder_id, opts = {})
          archive_with_http_info(folder_id, opts)
          nil
        end

        # Delete folder.
        # Delete folder by ID.
        # @param folder_id [String] ID of folder to delete.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(folder_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.archive ...'
          end
          # verify the required parameter 'folder_id' is set
          if @api_client.config.client_side_validation && folder_id.nil?
            fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.archive"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && folder_id !~ pattern
            fail ArgumentError, "invalid value for 'folder_id' when calling FoldersApi.archive, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/folders/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

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
            @api_client.config.logger.debug "API called: FoldersApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Delete folder.
        # Delete folder by path.
        # @param folder_path [String] Path of folder to delete
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive_by_path(folder_path, opts = {})
          archive_by_path_with_http_info(folder_path, opts)
          nil
        end

        # Delete folder.
        # Delete folder by path.
        # @param folder_path [String] Path of folder to delete
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_by_path_with_http_info(folder_path, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.archive_by_path ...'
          end
          # verify the required parameter 'folder_path' is set
          if @api_client.config.client_side_validation && folder_path.nil?
            fail ArgumentError, "Missing the required parameter 'folder_path' when calling FoldersApi.archive_by_path"
          end
          pattern = Regexp.new(/.+/)
          if @api_client.config.client_side_validation && folder_path !~ pattern
            fail ArgumentError, "invalid value for 'folder_path' when calling FoldersApi.archive_by_path, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/folders/{folderPath}'.sub('{' + 'folderPath' + '}', CGI.escape(folder_path.to_s))

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
            @api_client.config.logger.debug "API called: FoldersApi#archive_by_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Check folder update status.
        # Check status of folder update. Folder updates happen asynchronously.
        # @param task_id [String] Task ID of folder update
        # @param [Hash] opts the optional parameters
        # @return [FolderActionResponse]
        def check_update_status(task_id, opts = {})
          data, _status_code, _headers = check_update_status_with_http_info(task_id, opts)
          data
        end

        # Check folder update status.
        # Check status of folder update. Folder updates happen asynchronously.
        # @param task_id [String] Task ID of folder update
        # @param [Hash] opts the optional parameters
        # @return [Array<(FolderActionResponse, Integer, Hash)>] FolderActionResponse data, response status code and response headers
        def check_update_status_with_http_info(task_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.check_update_status ...'
          end
          # verify the required parameter 'task_id' is set
          if @api_client.config.client_side_validation && task_id.nil?
            fail ArgumentError, "Missing the required parameter 'task_id' when calling FoldersApi.check_update_status"
          end
          # resource path
          local_var_path = '/files/v3/folders/update/async/tasks/{taskId}/status'.sub('{' + 'taskId' + '}', CGI.escape(task_id.to_s))

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
          return_type = opts[:return_type] || 'FolderActionResponse' 

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
            @api_client.config.logger.debug "API called: FoldersApi#check_update_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create folder.
        # Creates a folder.
        # @param folder_input [FolderInput] Folder creation options
        # @param [Hash] opts the optional parameters
        # @return [Folder]
        def create(folder_input, opts = {})
          data, _status_code, _headers = create_with_http_info(folder_input, opts)
          data
        end

        # Create folder.
        # Creates a folder.
        # @param folder_input [FolderInput] Folder creation options
        # @param [Hash] opts the optional parameters
        # @return [Array<(Folder, Integer, Hash)>] Folder data, response status code and response headers
        def create_with_http_info(folder_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.create ...'
          end
          # verify the required parameter 'folder_input' is set
          if @api_client.config.client_side_validation && folder_input.nil?
            fail ArgumentError, "Missing the required parameter 'folder_input' when calling FoldersApi.create"
          end
          # resource path
          local_var_path = '/files/v3/folders'

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
          post_body = opts[:body] || @api_client.object_to_http_body(folder_input) 

          # return_type
          return_type = opts[:return_type] || 'Folder' 

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
            @api_client.config.logger.debug "API called: FoldersApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Search folders
        # Search for folders. Does not contain hidden or archived folders.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties that should be included in the returned folders.
        # @option opts [String] :after The maximum offset of items for a given search is 10000. Narrow your search down if you are reaching this limit.
        # @option opts [String] :before 
        # @option opts [Integer] :limit Limit of results to return. Max limit is 100.
        # @option opts [Array<String>] :sort Sort results by given property. For example -name sorts by name field descending, name sorts by name field ascending.
        # @option opts [String] :id Search folder by given ID.
        # @option opts [DateTime] :created_at Search for folders with the given creation timestamp.
        # @option opts [DateTime] :updated_at Search for folder at given update timestamp.
        # @option opts [String] :name Search for folders containing the specified name.
        # @option opts [String] :path Search for folders by path.
        # @option opts [Integer] :parent_folder_id Search for folders with the given parent folder ID.
        # @return [CollectionResponseFolder]
        def do_search(opts = {})
          data, _status_code, _headers = do_search_with_http_info(opts)
          data
        end

        # Search folders
        # Search for folders. Does not contain hidden or archived folders.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties that should be included in the returned folders.
        # @option opts [String] :after The maximum offset of items for a given search is 10000. Narrow your search down if you are reaching this limit.
        # @option opts [String] :before 
        # @option opts [Integer] :limit Limit of results to return. Max limit is 100.
        # @option opts [Array<String>] :sort Sort results by given property. For example -name sorts by name field descending, name sorts by name field ascending.
        # @option opts [String] :id Search folder by given ID.
        # @option opts [DateTime] :created_at Search for folders with the given creation timestamp.
        # @option opts [DateTime] :updated_at Search for folder at given update timestamp.
        # @option opts [String] :name Search for folders containing the specified name.
        # @option opts [String] :path Search for folders by path.
        # @option opts [Integer] :parent_folder_id Search for folders with the given parent folder ID.
        # @return [Array<(CollectionResponseFolder, Integer, Hash)>] CollectionResponseFolder data, response status code and response headers
        def do_search_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.do_search ...'
          end
          # resource path
          local_var_path = '/files/v3/folders/search'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
          query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
          query_params[:'createdAt'] = opts[:'created_at'] if !opts[:'created_at'].nil?
          query_params[:'updatedAt'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
          query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
          query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
          query_params[:'parentFolderId'] = opts[:'parent_folder_id'] if !opts[:'parent_folder_id'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseFolder' 

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
            @api_client.config.logger.debug "API called: FoldersApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get folder
        # Get folder by ID
        # @param folder_id [String] ID of desired folder
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties to set on returned folder.
        # @return [Folder]
        def get_by_id(folder_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(folder_id, opts)
          data
        end

        # Get folder
        # Get folder by ID
        # @param folder_id [String] ID of desired folder
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties to set on returned folder.
        # @return [Array<(Folder, Integer, Hash)>] Folder data, response status code and response headers
        def get_by_id_with_http_info(folder_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.get_by_id ...'
          end
          # verify the required parameter 'folder_id' is set
          if @api_client.config.client_side_validation && folder_id.nil?
            fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.get_by_id"
          end
          pattern = Regexp.new(/\d+/)
          if @api_client.config.client_side_validation && folder_id !~ pattern
            fail ArgumentError, "invalid value for 'folder_id' when calling FoldersApi.get_by_id, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/folders/{folderId}'.sub('{' + 'folderId' + '}', CGI.escape(folder_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'Folder' 

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
            @api_client.config.logger.debug "API called: FoldersApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get folder.
        # Get folder by path.
        # @param folder_path [String] Path of desired folder.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties to set on returned folder.
        # @return [Folder]
        def get_by_path(folder_path, opts = {})
          data, _status_code, _headers = get_by_path_with_http_info(folder_path, opts)
          data
        end

        # Get folder.
        # Get folder by path.
        # @param folder_path [String] Path of desired folder.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties Properties to set on returned folder.
        # @return [Array<(Folder, Integer, Hash)>] Folder data, response status code and response headers
        def get_by_path_with_http_info(folder_path, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.get_by_path ...'
          end
          # verify the required parameter 'folder_path' is set
          if @api_client.config.client_side_validation && folder_path.nil?
            fail ArgumentError, "Missing the required parameter 'folder_path' when calling FoldersApi.get_by_path"
          end
          pattern = Regexp.new(/.+/)
          if @api_client.config.client_side_validation && folder_path !~ pattern
            fail ArgumentError, "invalid value for 'folder_path' when calling FoldersApi.get_by_path, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/files/v3/folders/{folderPath}'.sub('{' + 'folderPath' + '}', CGI.escape(folder_path.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'Folder' 

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
            @api_client.config.logger.debug "API called: FoldersApi#get_by_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update folder properties
        # Update properties of folder by given ID. This action happens asynchronously and will update all of the folder's children as well.
        # @param folder_update_input [FolderUpdateInput] Properties to change in the folder
        # @param [Hash] opts the optional parameters
        # @return [FolderUpdateTaskLocator]
        def update_properties(folder_update_input, opts = {})
          data, _status_code, _headers = update_properties_with_http_info(folder_update_input, opts)
          data
        end

        # Update folder properties
        # Update properties of folder by given ID. This action happens asynchronously and will update all of the folder&#39;s children as well.
        # @param folder_update_input [FolderUpdateInput] Properties to change in the folder
        # @param [Hash] opts the optional parameters
        # @return [Array<(FolderUpdateTaskLocator, Integer, Hash)>] FolderUpdateTaskLocator data, response status code and response headers
        def update_properties_with_http_info(folder_update_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: FoldersApi.update_properties ...'
          end
          # verify the required parameter 'folder_update_input' is set
          if @api_client.config.client_side_validation && folder_update_input.nil?
            fail ArgumentError, "Missing the required parameter 'folder_update_input' when calling FoldersApi.update_properties"
          end
          # resource path
          local_var_path = '/files/v3/folders/update/async'

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
          post_body = opts[:body] || @api_client.object_to_http_body(folder_update_input) 

          # return_type
          return_type = opts[:return_type] || 'FolderUpdateTaskLocator' 

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
            @api_client.config.logger.debug "API called: FoldersApi#update_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end