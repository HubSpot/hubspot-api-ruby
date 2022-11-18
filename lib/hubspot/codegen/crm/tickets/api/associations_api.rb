=begin
#Tickets

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Tickets
      class AssociationsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Remove an association between two tickets
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param to_object_id [String] 
        # @param association_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(ticket_id, to_object_type, to_object_id, association_type, opts = {})
          archive_with_http_info(ticket_id, to_object_type, to_object_id, association_type, opts)
          nil
        end

        # Remove an association between two tickets
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param to_object_id [String] 
        # @param association_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(ticket_id, to_object_type, to_object_id, association_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: AssociationsApi.archive ...'
          end
          # verify the required parameter 'ticket_id' is set
          if @api_client.config.client_side_validation && ticket_id.nil?
            fail ArgumentError, "Missing the required parameter 'ticket_id' when calling AssociationsApi.archive"
          end
          # verify the required parameter 'to_object_type' is set
          if @api_client.config.client_side_validation && to_object_type.nil?
            fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.archive"
          end
          # verify the required parameter 'to_object_id' is set
          if @api_client.config.client_side_validation && to_object_id.nil?
            fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.archive"
          end
          # verify the required parameter 'association_type' is set
          if @api_client.config.client_side_validation && association_type.nil?
            fail ArgumentError, "Missing the required parameter 'association_type' when calling AssociationsApi.archive"
          end
          # resource path
          local_var_path = '/crm/v4/objects/tickets/{ticketId}/associations/{toObjectType}/{toObjectId}'.sub('{' + 'ticketId' + '}', CGI.escape(ticket_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s)).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s)).sub('{' + 'associationType' + '}', CGI.escape(association_type.to_s))

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
            @api_client.config.logger.debug "API called: AssociationsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Associate a ticket with another object
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param to_object_id [String] 
        # @param association_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [SimplePublicObjectWithAssociations]
        def create(ticket_id, to_object_type, to_object_id, association_type, opts = {})
          data, _status_code, _headers = create_with_http_info(ticket_id, to_object_type, to_object_id, association_type, opts)
          data
        end

        # Associate a ticket with another object
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param to_object_id [String] 
        # @param association_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(SimplePublicObjectWithAssociations, Integer, Hash)>] SimplePublicObjectWithAssociations data, response status code and response headers
        def create_with_http_info(ticket_id, to_object_type, to_object_id, association_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: AssociationsApi.create ...'
          end
          # verify the required parameter 'ticket_id' is set
          if @api_client.config.client_side_validation && ticket_id.nil?
            fail ArgumentError, "Missing the required parameter 'ticket_id' when calling AssociationsApi.create"
          end
          # verify the required parameter 'to_object_type' is set
          if @api_client.config.client_side_validation && to_object_type.nil?
            fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.create"
          end
          # verify the required parameter 'to_object_id' is set
          if @api_client.config.client_side_validation && to_object_id.nil?
            fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.create"
          end
          # verify the required parameter 'association_type' is set
          if @api_client.config.client_side_validation && association_type.nil?
            fail ArgumentError, "Missing the required parameter 'association_type' when calling AssociationsApi.create"
          end
          # resource path
          local_var_path = '/crm/v4/objects/tickets/{ticketId}/associations/{toObjectType}/{toObjectId}'.sub('{' + 'ticketId' + '}', CGI.escape(ticket_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s)).sub('{' + 'toObjectId' + '}', CGI.escape(to_object_id.to_s)).sub('{' + 'associationType' + '}', CGI.escape(association_type.to_s))

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
          return_type = opts[:return_type] || 'SimplePublicObjectWithAssociations' 

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

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: AssociationsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # List associations of a ticket by type
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 500)
        # @return [CollectionResponseAssociatedIdForwardPaging]
        def get_all(ticket_id, to_object_type, opts = {})
          data, _status_code, _headers = get_all_with_http_info(ticket_id, to_object_type, opts)
          data
        end

        # List associations of a ticket by type
        # @param ticket_id [String] 
        # @param to_object_type [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @return [Array<(CollectionResponseAssociatedIdForwardPaging, Integer, Hash)>] CollectionResponseAssociatedIdForwardPaging data, response status code and response headers
        def get_all_with_http_info(ticket_id, to_object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: AssociationsApi.get_all ...'
          end
          # verify the required parameter 'ticket_id' is set
          if @api_client.config.client_side_validation && ticket_id.nil?
            fail ArgumentError, "Missing the required parameter 'ticket_id' when calling AssociationsApi.get_all"
          end
          # verify the required parameter 'to_object_type' is set
          if @api_client.config.client_side_validation && to_object_type.nil?
            fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.get_all"
          end
          # resource path
          local_var_path = '/crm/v4/objects/tickets/{ticketId}/associations/{toObjectType}'.sub('{' + 'ticketId' + '}', CGI.escape(ticket_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseAssociatedIdForwardPaging' 

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
            @api_client.config.logger.debug "API called: AssociationsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
