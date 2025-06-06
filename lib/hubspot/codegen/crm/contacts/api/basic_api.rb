=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Contacts
      class BasicApi
        require 'hubspot/helpers/get_all_helper'
        include Hubspot::Helpers::GetAllHelper

        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive a contact
        # Delete a contact by ID. Deleted contacts can be restored within 90 days of deletion. Learn more about the [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions) and how to [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
        # @param contact_id [String] The ID of the contact to delete.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(contact_id, opts = {})
          archive_with_http_info(contact_id, opts)
          nil
        end

        # Archive a contact
        # Delete a contact by ID. Deleted contacts can be restored within 90 days of deletion. Learn more about the [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions) and how to [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
        # @param contact_id [String] The ID of the contact to delete.
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
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
            :operation => :"BasicApi.archive",
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

        # Create a contact
        # Create a single contact. Include a `properties` object to define [property values](https://developers.hubspot.com/docs/guides/api/crm/properties) for the contact, along with an `associations` array to define [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4) with other CRM records.
        # @param simple_public_object_input_for_create [SimplePublicObjectInputForCreate] 
        # @param [Hash] opts the optional parameters
        # @return [SimplePublicObject]
        def create(simple_public_object_input_for_create, opts = {})
          data, _status_code, _headers = create_with_http_info(simple_public_object_input_for_create, opts)
          data
        end

        # Create a contact
        # Create a single contact. Include a &#x60;properties&#x60; object to define [property values](https://developers.hubspot.com/docs/guides/api/crm/properties) for the contact, along with an &#x60;associations&#x60; array to define [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4) with other CRM records.
        # @param simple_public_object_input_for_create [SimplePublicObjectInputForCreate] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def create_with_http_info(simple_public_object_input_for_create, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
          end
          # verify the required parameter 'simple_public_object_input_for_create' is set
          if @api_client.config.client_side_validation && simple_public_object_input_for_create.nil?
            fail ArgumentError, "Missing the required parameter 'simple_public_object_input_for_create' when calling BasicApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(simple_public_object_input_for_create)

          # return_type
          return_type = opts[:debug_return_type] || 'SimplePublicObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.create",
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

        # Retrieve a contact
        # Retrieve a contact by its ID (`contactId`) or by a unique property (`idProperty`). You can specify what is returned using the `properties` query parameter.
        # @param contact_id [String] The ID of the contact to retrieve.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [SimplePublicObjectWithAssociations]
        def get_by_id(contact_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(contact_id, opts)
          data
        end

        # Retrieve a contact
        # Retrieve a contact by its ID (&#x60;contactId&#x60;) or by a unique property (&#x60;idProperty&#x60;). You can specify what is returned using the &#x60;properties&#x60; query parameter.
        # @param contact_id [String] The ID of the contact to retrieve.
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [Array<(SimplePublicObjectWithAssociations, Integer, Hash)>] SimplePublicObjectWithAssociations data, response status code and response headers
        def get_by_id_with_http_info(contact_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_by_id ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :csv) if !opts[:'properties'].nil?
          query_params[:'propertiesWithHistory'] = @api_client.build_collection_param(opts[:'properties_with_history'], :multi) if !opts[:'properties_with_history'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?
          query_params[:'idProperty'] = opts[:'id_property'] if !opts[:'id_property'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'SimplePublicObjectWithAssociations'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.get_by_id",
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

        # Retrieve contacts
        # Retrieve all contacts, using query parameters to specify the information that gets returned.
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 10)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored. Usage of this parameter will reduce the maximum number of objects that can be read by a single request.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [CollectionResponseSimplePublicObjectWithAssociationsForwardPaging]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # Retrieve contacts
        # Retrieve all contacts, using query parameters to specify the information that gets returned.
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 10)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored. Usage of this parameter will reduce the maximum number of objects that can be read by a single request.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [Array<(CollectionResponseSimplePublicObjectWithAssociationsForwardPaging, Integer, Hash)>] CollectionResponseSimplePublicObjectWithAssociationsForwardPaging data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_page ...'
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :csv) if !opts[:'properties'].nil?
          query_params[:'propertiesWithHistory'] = @api_client.build_collection_param(opts[:'properties_with_history'], :multi) if !opts[:'properties_with_history'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseSimplePublicObjectWithAssociationsForwardPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.get_page",
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

        # Merge two contacts
        # Merge two contact records. Learn more about [merging records](https://knowledge.hubspot.com/records/merge-records). 
        # @param public_merge_input [PublicMergeInput] 
        # @param [Hash] opts the optional parameters
        # @return [SimplePublicObject]
        def merge(public_merge_input, opts = {})
          data, _status_code, _headers = merge_with_http_info(public_merge_input, opts)
          data
        end

        # Merge two contacts
        # Merge two contact records. Learn more about [merging records](https://knowledge.hubspot.com/records/merge-records). 
        # @param public_merge_input [PublicMergeInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def merge_with_http_info(public_merge_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.merge ...'
          end
          # verify the required parameter 'public_merge_input' is set
          if @api_client.config.client_side_validation && public_merge_input.nil?
            fail ArgumentError, "Missing the required parameter 'public_merge_input' when calling BasicApi.merge"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/merge'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(public_merge_input)

          # return_type
          return_type = opts[:debug_return_type] || 'SimplePublicObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.merge",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Permanently delete a contact (GDPR-compliant)
        # Permanently delete a contact and all associated content to follow GDPR. Use optional property `idProperty` set to `email` to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future. Learn more about [permanently deleting contacts](https://knowledge.hubspot.com/privacy-and-consent/how-do-i-perform-a-gdpr-delete-in-hubspot).
        # @param public_gdpr_delete_input [PublicGdprDeleteInput] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def purge(public_gdpr_delete_input, opts = {})
          purge_with_http_info(public_gdpr_delete_input, opts)
          nil
        end

        # Permanently delete a contact (GDPR-compliant)
        # Permanently delete a contact and all associated content to follow GDPR. Use optional property &#x60;idProperty&#x60; set to &#x60;email&#x60; to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future. Learn more about [permanently deleting contacts](https://knowledge.hubspot.com/privacy-and-consent/how-do-i-perform-a-gdpr-delete-in-hubspot).
        # @param public_gdpr_delete_input [PublicGdprDeleteInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def purge_with_http_info(public_gdpr_delete_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.purge ...'
          end
          # verify the required parameter 'public_gdpr_delete_input' is set
          if @api_client.config.client_side_validation && public_gdpr_delete_input.nil?
            fail ArgumentError, "Missing the required parameter 'public_gdpr_delete_input' when calling BasicApi.purge"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/gdpr-delete'

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
            :operation => :"BasicApi.purge",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#purge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a contact
        # Update a contact by ID (`contactId`) or unique property value (`idProperty`). Provided property values will be overwritten. Read-only and non-existent properties will result in an error. Properties values can be cleared by passing an empty string.
        # @param contact_id [String] The ID of the contact to update.
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [SimplePublicObject]
        def update(contact_id, simple_public_object_input, opts = {})
          data, _status_code, _headers = update_with_http_info(contact_id, simple_public_object_input, opts)
          data
        end

        # Update a contact
        # Update a contact by ID (&#x60;contactId&#x60;) or unique property value (&#x60;idProperty&#x60;). Provided property values will be overwritten. Read-only and non-existent properties will result in an error. Properties values can be cleared by passing an empty string.
        # @param contact_id [String] The ID of the contact to update.
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :id_property The name of a property whose values are unique for this object type
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def update_with_http_info(contact_id, simple_public_object_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.update"
          end
          # verify the required parameter 'simple_public_object_input' is set
          if @api_client.config.client_side_validation && simple_public_object_input.nil?
            fail ArgumentError, "Missing the required parameter 'simple_public_object_input' when calling BasicApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'idProperty'] = opts[:'id_property'] if !opts[:'id_property'].nil?

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(simple_public_object_input)

          # return_type
          return_type = opts[:debug_return_type] || 'SimplePublicObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.update",
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
