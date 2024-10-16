=begin
#Events Events

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Events
    class EventsApi
      attr_accessor :api_client

      def initialize(api_client = ApiClient.default)
        @api_client = api_client
      end
      # Event Instance Query
      # This endpoint allows you to query for event instances using filter criteria. 
      # @param [Hash] opts the optional parameters
      # @option opts [String] :object_type The CRM Object type name to filter event instances on. Optionally, you can also provide an objectId in another param to filter to a specific CRM Object instance.
      # @option opts [String] :event_type The event type name. A list of available event type names can be obtained from another API call.
      # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
      # @option opts [String] :before 
      # @option opts [Integer] :limit The maximum number of results to display per page.
      # @option opts [Array<String>] :sort Sort direction based on the timestamp of the event instance, ASCENDING or DESCENDING.
      # @option opts [Time] :occurred_after 
      # @option opts [Time] :occurred_before 
      # @option opts [Integer] :object_id The ID of the CRM Object to filter event instances on. If filtering on objectId, you must also provide an objectType.
      # @option opts [Object] :object_property_propname 
      # @option opts [Object] :property_propname 
      # @option opts [Array<String>] :id ID of an event instance. IDs are 1:1 with event instances. If you. provide this filter and additional filters, the other filters must match the values on the event instance to yield results.
      # @return [CollectionResponseExternalUnifiedEvent]
      def get_page(opts = {})
        data, _status_code, _headers = get_page_with_http_info(opts)
        data
      end

      # Event Instance Query
      # This endpoint allows you to query for event instances using filter criteria. 
      # @param [Hash] opts the optional parameters
      # @option opts [String] :object_type The CRM Object type name to filter event instances on. Optionally, you can also provide an objectId in another param to filter to a specific CRM Object instance.
      # @option opts [String] :event_type The event type name. A list of available event type names can be obtained from another API call.
      # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
      # @option opts [String] :before 
      # @option opts [Integer] :limit The maximum number of results to display per page.
      # @option opts [Array<String>] :sort Sort direction based on the timestamp of the event instance, ASCENDING or DESCENDING.
      # @option opts [Time] :occurred_after 
      # @option opts [Time] :occurred_before 
      # @option opts [Integer] :object_id The ID of the CRM Object to filter event instances on. If filtering on objectId, you must also provide an objectType.
      # @option opts [Object] :object_property_propname 
      # @option opts [Object] :property_propname 
      # @option opts [Array<String>] :id ID of an event instance. IDs are 1:1 with event instances. If you. provide this filter and additional filters, the other filters must match the values on the event instance to yield results.
      # @return [Array<(CollectionResponseExternalUnifiedEvent, Integer, Hash)>] CollectionResponseExternalUnifiedEvent data, response status code and response headers
      def get_page_with_http_info(opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: EventsApi.get_page ...'
        end
        # resource path
        local_var_path = '/events/v3/events/'

        # query parameters
        query_params = opts[:query_params] || {}
        query_params[:'objectType'] = opts[:'object_type'] if !opts[:'object_type'].nil?
        query_params[:'eventType'] = opts[:'event_type'] if !opts[:'event_type'].nil?
        query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
        query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
        query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
        query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
        query_params[:'occurredAfter'] = opts[:'occurred_after'] if !opts[:'occurred_after'].nil?
        query_params[:'occurredBefore'] = opts[:'occurred_before'] if !opts[:'occurred_before'].nil?
        query_params[:'objectId'] = opts[:'object_id'] if !opts[:'object_id'].nil?
        query_params[:'objectProperty.{propname}'] = opts[:'object_property_propname'] if !opts[:'object_property_propname'].nil?
        query_params[:'property.{propname}'] = opts[:'property_propname'] if !opts[:'property_propname'].nil?
        query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :multi) if !opts[:'id'].nil?

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:debug_body]

        # return_type
        return_type = opts[:debug_return_type] || 'CollectionResponseExternalUnifiedEvent'

        # auth_names
        auth_names = opts[:debug_auth_names] || ['oauth2']

        new_options = opts.merge(
          :operation => :"EventsApi.get_page",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: EventsApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # Event Types
      # This endpoint returns a list of event type names which are visible to you. You may use these event type names to query the API for specific event instances of a desired type.
      # @param [Hash] opts the optional parameters
      # @return [VisibleExternalEventTypeNames]
      def get_types(opts = {})
        data, _status_code, _headers = get_types_with_http_info(opts)
        data
      end

      # Event Types
      # This endpoint returns a list of event type names which are visible to you. You may use these event type names to query the API for specific event instances of a desired type.
      # @param [Hash] opts the optional parameters
      # @return [Array<(VisibleExternalEventTypeNames, Integer, Hash)>] VisibleExternalEventTypeNames data, response status code and response headers
      def get_types_with_http_info(opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: EventsApi.get_types ...'
        end
        # resource path
        local_var_path = '/events/v3/events/event-types'

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
        return_type = opts[:debug_return_type] || 'VisibleExternalEventTypeNames'

        # auth_names
        auth_names = opts[:debug_auth_names] || ['oauth2']

        new_options = opts.merge(
          :operation => :"EventsApi.get_types",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: EventsApi#get_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end
