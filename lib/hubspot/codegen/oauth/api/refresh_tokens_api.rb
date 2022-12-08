=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module OAuth
    class RefreshTokensApi
      attr_accessor :api_client

      def initialize(api_client = ApiClient.default)
        @api_client = api_client
      end
      # @param token [String] 
      # @param [Hash] opts the optional parameters
      # @return [Error]
      def archive_refresh_token(token, opts = {})
        data, _status_code, _headers = archive_refresh_token_with_http_info(token, opts)
        data
      end

      # @param token [String] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(Error, Integer, Hash)>] Error data, response status code and response headers
      def archive_refresh_token_with_http_info(token, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: RefreshTokensApi.archive_refresh_token ...'
        end
        # verify the required parameter 'token' is set
        if @api_client.config.client_side_validation && token.nil?
          fail ArgumentError, "Missing the required parameter 'token' when calling RefreshTokensApi.archive_refresh_token"
        end
        # resource path
        local_var_path = '/oauth/v1/refresh-tokens/{token}'.sub('{' + 'token' + '}', CGI.escape(token.to_s))

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
        return_type = opts[:debug_return_type] || 'Error'

        # auth_names
        auth_names = opts[:debug_auth_names] || []

        new_options = opts.merge(
          :operation => :"RefreshTokensApi.archive_refresh_token",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: RefreshTokensApi#archive_refresh_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param token [String] 
      # @param [Hash] opts the optional parameters
      # @return [RefreshTokenInfoResponse]
      def get_refresh_token(token, opts = {})
        data, _status_code, _headers = get_refresh_token_with_http_info(token, opts)
        data
      end

      # @param token [String] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(RefreshTokenInfoResponse, Integer, Hash)>] RefreshTokenInfoResponse data, response status code and response headers
      def get_refresh_token_with_http_info(token, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: RefreshTokensApi.get_refresh_token ...'
        end
        # verify the required parameter 'token' is set
        if @api_client.config.client_side_validation && token.nil?
          fail ArgumentError, "Missing the required parameter 'token' when calling RefreshTokensApi.get_refresh_token"
        end
        # resource path
        local_var_path = '/oauth/v1/refresh-tokens/{token}'.sub('{' + 'token' + '}', CGI.escape(token.to_s))

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
        return_type = opts[:debug_return_type] || 'RefreshTokenInfoResponse'

        # auth_names
        auth_names = opts[:debug_auth_names] || []

        new_options = opts.merge(
          :operation => :"RefreshTokensApi.get_refresh_token",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: RefreshTokensApi#get_refresh_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end
