=begin
#CRM cards

#Allows an app to extend the CRM UI by surfacing custom cards in the sidebar of record pages. These cards are defined up-front as part of app configuration, then populated by external data fetch requests when the record page is accessed by a user.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Crm
    module Extensions
      module Cards
        class SampleResponseApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Get sample card detail response
          # Returns an example card detail response. This is the payload with displayed details for a card that will be shown to a user. An app should send this in response to the data fetch request.
          # @param [Hash] opts the optional parameters
          # @return [IntegratorCardPayloadResponse]
          def get_cards_sample_response(opts = {})
            data, _status_code, _headers = get_cards_sample_response_with_http_info(opts)
            data
          end

          # Get sample card detail response
          # Returns an example card detail response. This is the payload with displayed details for a card that will be shown to a user. An app should send this in response to the data fetch request.
          # @param [Hash] opts the optional parameters
          # @return [Array<(IntegratorCardPayloadResponse, Integer, Hash)>] IntegratorCardPayloadResponse data, response status code and response headers
          def get_cards_sample_response_with_http_info(opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: SampleResponseApi.get_cards_sample_response ...'
            end
            # resource path
            local_var_path = '/crm/v3/extensions/cards/sample-response'

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
            return_type = opts[:return_type] || 'IntegratorCardPayloadResponse' 

            # auth_names
            auth_names = opts[:auth_names] || []

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
              @api_client.config.logger.debug "API called: SampleResponseApi#get_cards_sample_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
