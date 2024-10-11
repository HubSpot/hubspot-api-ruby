=begin
#Marketing Events

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Events
      class BasicApi
        include Hubspot::Helpers::GetAllHelper

        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete a marketing event
        # Deletes an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to delete
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(external_event_id, external_account_id, opts = {})
          archive_with_http_info(external_event_id, external_account_id, opts)
          nil
        end

        # Delete a marketing event
        # Deletes an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to delete
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.archive ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.archive"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.archive"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

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

        # Delete multiple marketing events
        # Bulk delete a number of marketing events in HubSpot
        # @param batch_input_marketing_event_external_unique_identifier [BatchInputMarketingEventExternalUniqueIdentifier] 
        # @param [Hash] opts the optional parameters
        # @return [Error]
        def batch_archive(batch_input_marketing_event_external_unique_identifier, opts = {})
          data, _status_code, _headers = batch_archive_with_http_info(batch_input_marketing_event_external_unique_identifier, opts)
          data
        end

        # Delete multiple marketing events
        # Bulk delete a number of marketing events in HubSpot
        # @param batch_input_marketing_event_external_unique_identifier [BatchInputMarketingEventExternalUniqueIdentifier] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(Error, Integer, Hash)>] Error data, response status code and response headers
        def batch_archive_with_http_info(batch_input_marketing_event_external_unique_identifier, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.batch_archive ...'
          end
          # verify the required parameter 'batch_input_marketing_event_external_unique_identifier' is set
          if @api_client.config.client_side_validation && batch_input_marketing_event_external_unique_identifier.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_marketing_event_external_unique_identifier' when calling BasicApi.batch_archive"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/delete'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_marketing_event_external_unique_identifier)

          # return_type
          return_type = opts[:debug_return_type] || 'Error'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.batch_archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#batch_archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create or update multiple marketing events
        # Upsert multiple marketing events. If there is an existing Marketing event with the specified ID, it will be updated; otherwise a new event will be created.
        # @param batch_input_marketing_event_create_request_params [BatchInputMarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [BatchResponseMarketingEventPublicDefaultResponse]
        def batch_upsert(batch_input_marketing_event_create_request_params, opts = {})
          data, _status_code, _headers = batch_upsert_with_http_info(batch_input_marketing_event_create_request_params, opts)
          data
        end

        # Create or update multiple marketing events
        # Upsert multiple marketing events. If there is an existing Marketing event with the specified ID, it will be updated; otherwise a new event will be created.
        # @param batch_input_marketing_event_create_request_params [BatchInputMarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(BatchResponseMarketingEventPublicDefaultResponse, Integer, Hash)>] BatchResponseMarketingEventPublicDefaultResponse data, response status code and response headers
        def batch_upsert_with_http_info(batch_input_marketing_event_create_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.batch_upsert ...'
          end
          # verify the required parameter 'batch_input_marketing_event_create_request_params' is set
          if @api_client.config.client_side_validation && batch_input_marketing_event_create_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_marketing_event_create_request_params' when calling BasicApi.batch_upsert"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/upsert'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_marketing_event_create_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'BatchResponseMarketingEventPublicDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.batch_upsert",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#batch_upsert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Mark a marketing event as cancelled
        # Mark a marketing event as cancelled.
        # @param external_event_id [String] The id of the marketing event to mark as cancelled
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventDefaultResponse]
        def cancel(external_event_id, external_account_id, opts = {})
          data, _status_code, _headers = cancel_with_http_info(external_event_id, external_account_id, opts)
          data
        end

        # Mark a marketing event as cancelled
        # Mark a marketing event as cancelled.
        # @param external_event_id [String] The id of the marketing event to mark as cancelled
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventDefaultResponse, Integer, Hash)>] MarketingEventDefaultResponse data, response status code and response headers
        def cancel_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.cancel ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.cancel"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.cancel"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}/cancel'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.cancel",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Mark a marketing event as completed
        # Mark a marketing event as completed
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param marketing_event_complete_request_params [MarketingEventCompleteRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventDefaultResponse]
        def complete(external_event_id, external_account_id, marketing_event_complete_request_params, opts = {})
          data, _status_code, _headers = complete_with_http_info(external_event_id, external_account_id, marketing_event_complete_request_params, opts)
          data
        end

        # Mark a marketing event as completed
        # Mark a marketing event as completed
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param marketing_event_complete_request_params [MarketingEventCompleteRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventDefaultResponse, Integer, Hash)>] MarketingEventDefaultResponse data, response status code and response headers
        def complete_with_http_info(external_event_id, external_account_id, marketing_event_complete_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.complete ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.complete"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.complete"
          end
          # verify the required parameter 'marketing_event_complete_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_complete_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_complete_request_params' when calling BasicApi.complete"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}/complete'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_complete_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.complete",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a marketing event
        # Creates a new marketing event in HubSpot
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventDefaultResponse]
        def create(marketing_event_create_request_params, opts = {})
          data, _status_code, _headers = create_with_http_info(marketing_event_create_request_params, opts)
          data
        end

        # Create a marketing event
        # Creates a new marketing event in HubSpot
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventDefaultResponse, Integer, Hash)>] MarketingEventDefaultResponse data, response status code and response headers
        def create_with_http_info(marketing_event_create_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
          end
          # verify the required parameter 'marketing_event_create_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_create_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_create_request_params' when calling BasicApi.create"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_create_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventDefaultResponse'

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

        # Search for marketing events
        # Search for marketing events that have an event id that starts with the query string
        # @param q [String] The id of the marketing event in the external event application
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponseMarketingEventExternalUniqueIdentifierNoPaging]
        def do_search(q, opts = {})
          data, _status_code, _headers = do_search_with_http_info(q, opts)
          data
        end

        # Search for marketing events
        # Search for marketing events that have an event id that starts with the query string
        # @param q [String] The id of the marketing event in the external event application
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponseMarketingEventExternalUniqueIdentifierNoPaging, Integer, Hash)>] CollectionResponseMarketingEventExternalUniqueIdentifierNoPaging data, response status code and response headers
        def do_search_with_http_info(q, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.do_search ...'
          end
          # verify the required parameter 'q' is set
          if @api_client.config.client_side_validation && q.nil?
            fail ArgumentError, "Missing the required parameter 'q' when calling BasicApi.do_search"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/search'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'q'] = q

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseMarketingEventExternalUniqueIdentifierNoPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.do_search",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get a marketing event
        # Returns the details of the Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to return
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicReadResponse]
        def get_details(external_event_id, external_account_id, opts = {})
          data, _status_code, _headers = get_details_with_http_info(external_event_id, external_account_id, opts)
          data
        end

        # Get a marketing event
        # Returns the details of the Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to return
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicReadResponse, Integer, Hash)>] MarketingEventPublicReadResponse data, response status code and response headers
        def get_details_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_details ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.get_details"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.get_details"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicReadResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.get_details",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a marketing event
        # Updates an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to update
        # @param external_account_id [String] The account id associated with the marketing event
        # @param marketing_event_update_request_params [MarketingEventUpdateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicDefaultResponse]
        def update(external_event_id, external_account_id, marketing_event_update_request_params, opts = {})
          data, _status_code, _headers = update_with_http_info(external_event_id, external_account_id, marketing_event_update_request_params, opts)
          data
        end

        # Update a marketing event
        # Updates an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to update
        # @param external_account_id [String] The account id associated with the marketing event
        # @param marketing_event_update_request_params [MarketingEventUpdateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicDefaultResponse, Integer, Hash)>] MarketingEventPublicDefaultResponse data, response status code and response headers
        def update_with_http_info(external_event_id, external_account_id, marketing_event_update_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.update"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.update"
          end
          # verify the required parameter 'marketing_event_update_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_update_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_update_request_params' when calling BasicApi.update"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_update_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicDefaultResponse'

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

        # Create or update a marketing event
        # Upserts a marketing event If there is an existing marketing event with the specified ID, it will be updated; otherwise a new event will be created.
        # @param external_event_id [String] The ID of the marketing event to upsert
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicDefaultResponse]
        def upsert(external_event_id, marketing_event_create_request_params, opts = {})
          data, _status_code, _headers = upsert_with_http_info(external_event_id, marketing_event_create_request_params, opts)
          data
        end

        # Create or update a marketing event
        # Upserts a marketing event If there is an existing marketing event with the specified ID, it will be updated; otherwise a new event will be created.
        # @param external_event_id [String] The ID of the marketing event to upsert
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicDefaultResponse, Integer, Hash)>] MarketingEventPublicDefaultResponse data, response status code and response headers
        def upsert_with_http_info(external_event_id, marketing_event_create_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.upsert ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.upsert"
          end
          # verify the required parameter 'marketing_event_create_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_create_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_create_request_params' when calling BasicApi.upsert"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_create_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.upsert",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#upsert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
