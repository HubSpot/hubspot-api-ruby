=begin
#CRM Owners

#HubSpot uses **owners** to assign CRM objects to specific people in your organization. The endpoints described here are used to get a list of the owners that are available for an account. To assign an owner to an object, set the hubspot_owner_id property using the appropriate CRM object update or create a request.  If teams are available for your HubSpot tier, these endpoints will also indicate which team(s) an owner can access, as well as which team is the owner's primary team.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Owners
      class OwnersApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Read an owner by given `id` or `userId`
        # @param owner_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :id_property  (default to 'id')
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [PublicOwner]
        def get_by_id(owner_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(owner_id, opts)
          data
        end

        # Read an owner by given &#x60;id&#x60; or &#x60;userId&#x60;
        # @param owner_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @option opts [String] :id_property 
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(PublicOwner, Integer, Hash)>] PublicOwner data, response status code and response headers
        def get_by_id_with_http_info(owner_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: OwnersApi.get_by_id ...'
          end
          # verify the required parameter 'owner_id' is set
          if @api_client.config.client_side_validation && owner_id.nil?
            fail ArgumentError, "Missing the required parameter 'owner_id' when calling OwnersApi.get_by_id"
          end
          allowable_values = ["id", "userId"]
          if @api_client.config.client_side_validation && opts[:'id_property'] && !allowable_values.include?(opts[:'id_property'])
            fail ArgumentError, "invalid value for \"id_property\", must be one of #{allowable_values}"
          end
          # resource path
          local_var_path = '/crm/v3/owners/{ownerId}'.sub('{' + 'ownerId' + '}', CGI.escape(owner_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'idProperty'] = opts[:'id_property'] if !opts[:'id_property'].nil?
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
          return_type = opts[:return_type] || 'PublicOwner' 

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
            @api_client.config.logger.debug "API called: OwnersApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get a page of owners
        # @param [Hash] opts the optional parameters
        # @option opts [String] :email Filter by email address (optional)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 100)
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [CollectionResponsePublicOwnerForwardPaging]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # Get a page of owners
        # @param [Hash] opts the optional parameters
        # @option opts [String] :email Filter by email address (optional)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(CollectionResponsePublicOwnerForwardPaging, Integer, Hash)>] CollectionResponsePublicOwnerForwardPaging data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: OwnersApi.get_page ...'
          end
          # resource path
          local_var_path = '/crm/v3/owners/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
          return_type = opts[:return_type] || 'CollectionResponsePublicOwnerForwardPaging' 

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
            @api_client.config.logger.debug "API called: OwnersApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
