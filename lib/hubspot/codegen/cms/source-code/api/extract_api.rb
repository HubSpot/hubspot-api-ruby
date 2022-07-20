=begin
#CMS Source Code

#Endpoints for interacting with files in the CMS Developer File System. These files include HTML templates, CSS, JS, modules, and other assets which are used to create CMS content.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Cms
    module SourceCode
      class ExtractApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Extracts a zip file
        # Extracts a zip file in the file system. The zip file will be extracted in-place and not be deleted automatically.
        # @param path [String] The file system location of the zip file.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def extract_by_path(path, opts = {})
          extract_by_path_with_http_info(path, opts)
          nil
        end

        # Extracts a zip file
        # Extracts a zip file in the file system. The zip file will be extracted in-place and not be deleted automatically.
        # @param path [String] The file system location of the zip file.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def extract_by_path_with_http_info(path, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ExtractApi.extract_by_path ...'
          end
          # verify the required parameter 'path' is set
          if @api_client.config.client_side_validation && path.nil?
            fail ArgumentError, "Missing the required parameter 'path' when calling ExtractApi.extract_by_path"
          end
          pattern = Regexp.new(/.+/)
          if @api_client.config.client_side_validation && path !~ pattern
            fail ArgumentError, "invalid value for 'path' when calling ExtractApi.extract_by_path, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/cms/v3/source-code/extract/{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))

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
          auth_names = opts[:auth_names] || ['oauth2']

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
            @api_client.config.logger.debug "API called: ExtractApi#extract_by_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
