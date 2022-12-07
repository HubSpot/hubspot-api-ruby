=begin
#Schemas

#The CRM uses schemas to define how custom objects should store and represent information in the HubSpot CRM. Schemas define details about an object's type, properties, and associations. The schema can be uniquely identified by its **object type ID**.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Schemas
      class CoreApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete a schema
        # Deletes a schema. Any existing records of this schema must be deleted **first**. Otherwise this call will fail.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [nil]
        def archive(object_type, opts = {})
          archive_with_http_info(object_type, opts)
          nil
        end

        # Delete a schema
        # Deletes a schema. Any existing records of this schema must be deleted **first**. Otherwise this call will fail.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.archive ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/schemas/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

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
            @api_client.config.logger.debug "API called: CoreApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Remove an association
        # Removes an existing association from a schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param association_identifier [String] Unique ID of the association to remove.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive_association(object_type, association_identifier, opts = {})
          archive_association_with_http_info(object_type, association_identifier, opts)
          nil
        end

        # Remove an association
        # Removes an existing association from a schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param association_identifier [String] Unique ID of the association to remove.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_association_with_http_info(object_type, association_identifier, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.archive_association ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.archive_association"
          end
          # verify the required parameter 'association_identifier' is set
          if @api_client.config.client_side_validation && association_identifier.nil?
            fail ArgumentError, "Missing the required parameter 'association_identifier' when calling CoreApi.archive_association"
          end
          # resource path
          local_var_path = '/crm/v3/schemas/{objectType}/associations/{associationIdentifier}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'associationIdentifier' + '}', CGI.escape(association_identifier.to_s))

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
            @api_client.config.logger.debug "API called: CoreApi#archive_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a new schema
        # Define a new object schema, along with custom properties and associations. The entire object schema, including its object type ID, properties, and associations will be returned in the response.
        # @param object_schema_egg [ObjectSchemaEgg] Object schema definition, including properties and associations.
        # @param [Hash] opts the optional parameters
        # @return [ObjectSchema]
        def create(object_schema_egg, opts = {})
          data, _status_code, _headers = create_with_http_info(object_schema_egg, opts)
          data
        end

        # Create a new schema
        # Define a new object schema, along with custom properties and associations. The entire object schema, including its object type ID, properties, and associations will be returned in the response.
        # @param object_schema_egg [ObjectSchemaEgg] Object schema definition, including properties and associations.
        # @param [Hash] opts the optional parameters
        # @return [Array<(ObjectSchema, Integer, Hash)>] ObjectSchema data, response status code and response headers
        def create_with_http_info(object_schema_egg, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.create ...'
          end
          # verify the required parameter 'object_schema_egg' is set
          if @api_client.config.client_side_validation && object_schema_egg.nil?
            fail ArgumentError, "Missing the required parameter 'object_schema_egg' when calling CoreApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/schemas'

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
          post_body = opts[:body] || @api_client.object_to_http_body(object_schema_egg) 

          # return_type
          return_type = opts[:return_type] || 'ObjectSchema' 

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
            @api_client.config.logger.debug "API called: CoreApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create an association
        # Defines a new association between the primary schema's object type and other object types.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param association_definition_egg [AssociationDefinitionEgg] Attributes that define the association.
        # @param [Hash] opts the optional parameters
        # @return [AssociationDefinition]
        def create_association(object_type, association_definition_egg, opts = {})
          data, _status_code, _headers = create_association_with_http_info(object_type, association_definition_egg, opts)
          data
        end

        # Create an association
        # Defines a new association between the primary schema&#39;s object type and other object types.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param association_definition_egg [AssociationDefinitionEgg] Attributes that define the association.
        # @param [Hash] opts the optional parameters
        # @return [Array<(AssociationDefinition, Integer, Hash)>] AssociationDefinition data, response status code and response headers
        def create_association_with_http_info(object_type, association_definition_egg, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.create_association ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.create_association"
          end
          # verify the required parameter 'association_definition_egg' is set
          if @api_client.config.client_side_validation && association_definition_egg.nil?
            fail ArgumentError, "Missing the required parameter 'association_definition_egg' when calling CoreApi.create_association"
          end
          # resource path
          local_var_path = '/crm/v3/schemas/{objectType}/associations'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

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
          post_body = opts[:body] || @api_client.object_to_http_body(association_definition_egg) 

          # return_type
          return_type = opts[:return_type] || 'AssociationDefinition' 

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
            @api_client.config.logger.debug "API called: CoreApi#create_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get all schemas
        # Returns all object schemas that have been defined for your account.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [CollectionResponseObjectSchemaNoPaging]
        def get_all(opts = {})
          data, _status_code, _headers = get_all_with_http_info(opts)
          data
        end

        # Get all schemas
        # Returns all object schemas that have been defined for your account.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(CollectionResponseObjectSchemaNoPaging, Integer, Hash)>] CollectionResponseObjectSchemaNoPaging data, response status code and response headers
        def get_all_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.get_all ...'
          end
          # resource path
          local_var_path = '/crm/v3/schemas'

          # query parameters
          query_params = opts[:query_params] || {}
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
          return_type = opts[:return_type] || 'CollectionResponseObjectSchemaNoPaging' 

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
            @api_client.config.logger.debug "API called: CoreApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get an existing schema
        # Returns an existing object schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param [Hash] opts the optional parameters
        # @return [ObjectSchema]
        def get_by_id(object_type, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(object_type, opts)
          data
        end

        # Get an existing schema
        # Returns an existing object schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param [Hash] opts the optional parameters
        # @return [Array<(ObjectSchema, Integer, Hash)>] ObjectSchema data, response status code and response headers
        def get_by_id_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.get_by_id ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/schemas/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

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
          return_type = opts[:return_type] || 'ObjectSchema' 

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
            @api_client.config.logger.debug "API called: CoreApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a schema
        # Update the details for an existing object schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param object_type_definition_patch [ObjectTypeDefinitionPatch] Attributes to update in your schema.
        # @param [Hash] opts the optional parameters
        # @return [ObjectTypeDefinition]
        def update(object_type, object_type_definition_patch, opts = {})
          data, _status_code, _headers = update_with_http_info(object_type, object_type_definition_patch, opts)
          data
        end

        # Update a schema
        # Update the details for an existing object schema.
        # @param object_type [String] Fully qualified name or object type ID of your schema.
        # @param object_type_definition_patch [ObjectTypeDefinitionPatch] Attributes to update in your schema.
        # @param [Hash] opts the optional parameters
        # @return [Array<(ObjectTypeDefinition, Integer, Hash)>] ObjectTypeDefinition data, response status code and response headers
        def update_with_http_info(object_type, object_type_definition_patch, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: CoreApi.update ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling CoreApi.update"
          end
          # verify the required parameter 'object_type_definition_patch' is set
          if @api_client.config.client_side_validation && object_type_definition_patch.nil?
            fail ArgumentError, "Missing the required parameter 'object_type_definition_patch' when calling CoreApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/schemas/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

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
          post_body = opts[:body] || @api_client.object_to_http_body(object_type_definition_patch) 

          # return_type
          return_type = opts[:return_type] || 'ObjectTypeDefinition' 

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
            @api_client.config.logger.debug "API called: CoreApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
