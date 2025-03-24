=begin
#Companies

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Companies
      class BatchApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive a batch of companies
        # Delete a batch of companies by ID. Deleted companies can be restored within 90 days of deletion. Learn more about [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
        # @param batch_input_simple_public_object_id [BatchInputSimplePublicObjectId] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(batch_input_simple_public_object_id, opts = {})
          archive_with_http_info(batch_input_simple_public_object_id, opts)
          nil
        end

        # Archive a batch of companies
        # Delete a batch of companies by ID. Deleted companies can be restored within 90 days of deletion. Learn more about [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
        # @param batch_input_simple_public_object_id [BatchInputSimplePublicObjectId] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(batch_input_simple_public_object_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.archive ...'
          end
          # verify the required parameter 'batch_input_simple_public_object_id' is set
          if @api_client.config.client_side_validation && batch_input_simple_public_object_id.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_simple_public_object_id' when calling BatchApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/objects/companies/batch/archive'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_simple_public_object_id)

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BatchApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BatchApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a batch of companies
        # Create a batch of companies. The `inputs` array can contain a `properties` object to define property values for each company, along with an `associations` array to define [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4) with other CRM records.
        # @param batch_input_simple_public_object_input_for_create [BatchInputSimplePublicObjectInputForCreate] 
        # @param [Hash] opts the optional parameters
        # @return [BatchResponseSimplePublicObject]
        def create(batch_input_simple_public_object_input_for_create, opts = {})
          data, _status_code, _headers = create_with_http_info(batch_input_simple_public_object_input_for_create, opts)
          data
        end

        # Create a batch of companies
        # Create a batch of companies. The &#x60;inputs&#x60; array can contain a &#x60;properties&#x60; object to define property values for each company, along with an &#x60;associations&#x60; array to define [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4) with other CRM records.
        # @param batch_input_simple_public_object_input_for_create [BatchInputSimplePublicObjectInputForCreate] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
        def create_with_http_info(batch_input_simple_public_object_input_for_create, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.create ...'
          end
          # verify the required parameter 'batch_input_simple_public_object_input_for_create' is set
          if @api_client.config.client_side_validation && batch_input_simple_public_object_input_for_create.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_simple_public_object_input_for_create' when calling BatchApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/objects/companies/batch/create'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_simple_public_object_input_for_create)

          # return_type
          return_type = opts[:debug_return_type] || 'BatchResponseSimplePublicObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BatchApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BatchApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Retrieve a batch of companies
        # Retrieve a batch of companies by ID (`companyId`) or by a unique property (`idProperty`). You can specify what is returned using the `properties` query parameter.
        # @param batch_read_input_simple_public_object_id [BatchReadInputSimplePublicObjectId] 
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [BatchResponseSimplePublicObject]
        def read(batch_read_input_simple_public_object_id, opts = {})
          data, _status_code, _headers = read_with_http_info(batch_read_input_simple_public_object_id, opts)
          data
        end

        # Retrieve a batch of companies
        # Retrieve a batch of companies by ID (&#x60;companyId&#x60;) or by a unique property (&#x60;idProperty&#x60;). You can specify what is returned using the &#x60;properties&#x60; query parameter.
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
          local_var_path = '/crm/v3/objects/companies/batch/read'

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

        # Update a batch of companies
        # Update a batch of companies by ID.
        # @param batch_input_simple_public_object_batch_input [BatchInputSimplePublicObjectBatchInput] 
        # @param [Hash] opts the optional parameters
        # @return [BatchResponseSimplePublicObject]
        def update(batch_input_simple_public_object_batch_input, opts = {})
          data, _status_code, _headers = update_with_http_info(batch_input_simple_public_object_batch_input, opts)
          data
        end

        # Update a batch of companies
        # Update a batch of companies by ID.
        # @param batch_input_simple_public_object_batch_input [BatchInputSimplePublicObjectBatchInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
        def update_with_http_info(batch_input_simple_public_object_batch_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.update ...'
          end
          # verify the required parameter 'batch_input_simple_public_object_batch_input' is set
          if @api_client.config.client_side_validation && batch_input_simple_public_object_batch_input.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_simple_public_object_batch_input' when calling BatchApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/objects/companies/batch/update'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_simple_public_object_batch_input)

          # return_type
          return_type = opts[:debug_return_type] || 'BatchResponseSimplePublicObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BatchApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BatchApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create or update a batch of companies by unique property values
        # Create or update companies identified by a unique property value as specified by the `idProperty` query parameter. `idProperty` query param refers to a property whose values are unique for the object.
        # @param batch_input_simple_public_object_batch_input_upsert [BatchInputSimplePublicObjectBatchInputUpsert] 
        # @param [Hash] opts the optional parameters
        # @return [BatchResponseSimplePublicUpsertObject]
        def upsert(batch_input_simple_public_object_batch_input_upsert, opts = {})
          data, _status_code, _headers = upsert_with_http_info(batch_input_simple_public_object_batch_input_upsert, opts)
          data
        end

        # Create or update a batch of companies by unique property values
        # Create or update companies identified by a unique property value as specified by the &#x60;idProperty&#x60; query parameter. &#x60;idProperty&#x60; query param refers to a property whose values are unique for the object.
        # @param batch_input_simple_public_object_batch_input_upsert [BatchInputSimplePublicObjectBatchInputUpsert] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(BatchResponseSimplePublicUpsertObject, Integer, Hash)>] BatchResponseSimplePublicUpsertObject data, response status code and response headers
        def upsert_with_http_info(batch_input_simple_public_object_batch_input_upsert, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BatchApi.upsert ...'
          end
          # verify the required parameter 'batch_input_simple_public_object_batch_input_upsert' is set
          if @api_client.config.client_side_validation && batch_input_simple_public_object_batch_input_upsert.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_simple_public_object_batch_input_upsert' when calling BatchApi.upsert"
          end
          # resource path
          local_var_path = '/crm/v3/objects/companies/batch/upsert'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_simple_public_object_batch_input_upsert)

          # return_type
          return_type = opts[:debug_return_type] || 'BatchResponseSimplePublicUpsertObject'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BatchApi.upsert",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BatchApi#upsert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
