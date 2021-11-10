=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are standard objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      class GDPRApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # DELETE
        # Permanently delete a contact by email address and all associated content to follow GDPR. If contact isn't found, blacklists an email address from being used in the future.
        # @param object_type [String] 
        # @param email [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def purge_by_email(object_type, email, opts = {})
          purge_by_email_with_http_info(object_type, email, opts)
          nil
        end

        # DELETE
        # Permanently delete a contact by email address and all associated content to follow GDPR. If contact isn&#39;t found, blacklists an email address from being used in the future.
        # @param object_type [String] 
        # @param email [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def purge_by_email_with_http_info(object_type, email, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GDPRApi.purge_by_email ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GDPRApi.purge_by_email"
          end
          # verify the required parameter 'email' is set
          if @api_client.config.client_side_validation && email.nil?
            fail ArgumentError, "Missing the required parameter 'email' when calling GDPRApi.purge_by_email"
          end
          # resource path
          local_var_path = '/crm/v3/objects/gdpr/{objectType}/email/{email}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'email' + '}', CGI.escape(email.to_s))

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
            @api_client.config.logger.debug "API called: GDPRApi#purge_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # DELETE
        # Permanently delete a contact by id and all associated content to follow GDPR
        # @param object_type [String] 
        # @param object_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def purge_by_id(object_type, object_id, opts = {})
          purge_by_id_with_http_info(object_type, object_id, opts)
          nil
        end

        # DELETE
        # Permanently delete a contact by id and all associated content to follow GDPR
        # @param object_type [String] 
        # @param object_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def purge_by_id_with_http_info(object_type, object_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GDPRApi.purge_by_id ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GDPRApi.purge_by_id"
          end
          # verify the required parameter 'object_id' is set
          if @api_client.config.client_side_validation && object_id.nil?
            fail ArgumentError, "Missing the required parameter 'object_id' when calling GDPRApi.purge_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/objects/gdpr/{objectType}/{objectId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s))

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
            @api_client.config.logger.debug "API called: GDPRApi#purge_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end