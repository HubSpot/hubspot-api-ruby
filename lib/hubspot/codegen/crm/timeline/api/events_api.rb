=begin
#Timeline

#This feature allows an app to create and configure custom events that can show up in the timelines of certain CRM objects like contacts, companies, tickets, or deals. You'll find multiple use cases for this API in the sections below.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Timeline
      class EventsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Create a single event
        # Creates an instance of a timeline event based on an event template. Once created, this event is immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via `objectPropertyName`, this call will also attempt to updates those properties, or add them if they don't exist.
        # @param timeline_event [TimelineEvent] The timeline event definition.
        # @param [Hash] opts the optional parameters
        # @return [TimelineEventResponse]
        def create(timeline_event, opts = {})
          data, _status_code, _headers = create_with_http_info(timeline_event, opts)
          data
        end

        # Create a single event
        # Creates an instance of a timeline event based on an event template. Once created, this event is immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via &#x60;objectPropertyName&#x60;, this call will also attempt to updates those properties, or add them if they don&#39;t exist.
        # @param timeline_event [TimelineEvent] The timeline event definition.
        # @param [Hash] opts the optional parameters
        # @return [Array<(TimelineEventResponse, Integer, Hash)>] TimelineEventResponse data, response status code and response headers
        def create_with_http_info(timeline_event, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: EventsApi.create ...'
          end
          # verify the required parameter 'timeline_event' is set
          if @api_client.config.client_side_validation && timeline_event.nil?
            fail ArgumentError, "Missing the required parameter 'timeline_event' when calling EventsApi.create"
          end
          # resource path
          local_var_path = '/integrators/timeline/v3/events'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(timeline_event)

          # return_type
          return_type = opts[:debug_return_type] || 'TimelineEventResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"EventsApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Creates multiple events
        # Creates multiple instances of timeline events based on an event template. Once created, these event are immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via `objectPropertyName`, this call will also attempt to updates those properties, or add them if they don't exist.
        # @param batch_input_timeline_event [BatchInputTimelineEvent] The timeline event definition.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def create_batch(batch_input_timeline_event, opts = {})
          create_batch_with_http_info(batch_input_timeline_event, opts)
          nil
        end

        # Creates multiple events
        # Creates multiple instances of timeline events based on an event template. Once created, these event are immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via &#x60;objectPropertyName&#x60;, this call will also attempt to updates those properties, or add them if they don&#39;t exist.
        # @param batch_input_timeline_event [BatchInputTimelineEvent] The timeline event definition.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def create_batch_with_http_info(batch_input_timeline_event, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: EventsApi.create_batch ...'
          end
          # verify the required parameter 'batch_input_timeline_event' is set
          if @api_client.config.client_side_validation && batch_input_timeline_event.nil?
            fail ArgumentError, "Missing the required parameter 'batch_input_timeline_event' when calling EventsApi.create_batch"
          end
          # resource path
          local_var_path = '/integrators/timeline/v3/events/batch/create'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_input_timeline_event)

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"EventsApi.create_batch",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Gets the event
        # This returns the previously created event. It contains all existing info for the event, but not necessarily the CRM object.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @return [TimelineEventResponse]
        def get_by_id(event_template_id, event_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(event_template_id, event_id, opts)
          data
        end

        # Gets the event
        # This returns the previously created event. It contains all existing info for the event, but not necessarily the CRM object.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @return [Array<(TimelineEventResponse, Integer, Hash)>] TimelineEventResponse data, response status code and response headers
        def get_by_id_with_http_info(event_template_id, event_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: EventsApi.get_by_id ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling EventsApi.get_by_id"
          end
          # verify the required parameter 'event_id' is set
          if @api_client.config.client_side_validation && event_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.get_by_id"
          end
          # resource path
          local_var_path = '/integrators/timeline/v3/events/{eventTemplateId}/{eventId}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

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
          return_type = opts[:debug_return_type] || 'TimelineEventResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"EventsApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Gets the detailTemplate as rendered
        # This will take the `detailTemplate` from the event template and return an object rendering the specified event. If the template references `extraData` that isn't found in the event, it will be ignored and we'll render without it.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @return [EventDetail]
        def get_detail_by_id(event_template_id, event_id, opts = {})
          data, _status_code, _headers = get_detail_by_id_with_http_info(event_template_id, event_id, opts)
          data
        end

        # Gets the detailTemplate as rendered
        # This will take the &#x60;detailTemplate&#x60; from the event template and return an object rendering the specified event. If the template references &#x60;extraData&#x60; that isn&#39;t found in the event, it will be ignored and we&#39;ll render without it.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @return [Array<(EventDetail, Integer, Hash)>] EventDetail data, response status code and response headers
        def get_detail_by_id_with_http_info(event_template_id, event_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: EventsApi.get_detail_by_id ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling EventsApi.get_detail_by_id"
          end
          # verify the required parameter 'event_id' is set
          if @api_client.config.client_side_validation && event_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.get_detail_by_id"
          end
          # resource path
          local_var_path = '/integrators/timeline/v3/events/{eventTemplateId}/{eventId}/detail'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

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
          return_type = opts[:debug_return_type] || 'EventDetail'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"EventsApi.get_detail_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#get_detail_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Renders the header or detail as HTML
        # This will take either the `headerTemplate` or `detailTemplate` from the event template and render for the specified event as HTML. If the template references `extraData` that isn't found in the event, it will be ignored and we'll render without it.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :detail Set to &#39;true&#39;, we want to render the &#x60;detailTemplate&#x60; instead of the &#x60;headerTemplate&#x60;.
        # @return [String]
        def get_render_by_id(event_template_id, event_id, opts = {})
          data, _status_code, _headers = get_render_by_id_with_http_info(event_template_id, event_id, opts)
          data
        end

        # Renders the header or detail as HTML
        # This will take either the &#x60;headerTemplate&#x60; or &#x60;detailTemplate&#x60; from the event template and render for the specified event as HTML. If the template references &#x60;extraData&#x60; that isn&#39;t found in the event, it will be ignored and we&#39;ll render without it.
        # @param event_template_id [String] The event template ID.
        # @param event_id [String] The event ID.
        # @param [Hash] opts the optional parameters
        # @option opts [Boolean] :detail Set to &#39;true&#39;, we want to render the &#x60;detailTemplate&#x60; instead of the &#x60;headerTemplate&#x60;.
        # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
        def get_render_by_id_with_http_info(event_template_id, event_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: EventsApi.get_render_by_id ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling EventsApi.get_render_by_id"
          end
          # verify the required parameter 'event_id' is set
          if @api_client.config.client_side_validation && event_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.get_render_by_id"
          end
          # resource path
          local_var_path = '/integrators/timeline/v3/events/{eventTemplateId}/{eventId}/render'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'detail'] = opts[:'detail'] if !opts[:'detail'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['text/html', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'String'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"EventsApi.get_render_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#get_render_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
