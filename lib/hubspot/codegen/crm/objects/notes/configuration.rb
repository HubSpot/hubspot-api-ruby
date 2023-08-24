=begin
#Notes

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

module Hubspot
  module Crm
    module Objects
      module Notes
        class Configuration
          # Defines url scheme
          attr_accessor :scheme

          # Defines url host
          attr_accessor :host

          # Defines url base path
          attr_accessor :base_path

          # Define server configuration index
          attr_accessor :server_index

          # Define server operation configuration index
          attr_accessor :server_operation_index

          # Default server variables
          attr_accessor :server_variables

          # Default server operation variables
          attr_accessor :server_operation_variables

          # Defines API keys used with API Key authentications.
          #
          # @return [Hash] key: parameter name, value: parameter value (API key)
          #
          # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
          #   config.api_key['api_key'] = 'xxx'
          attr_accessor :api_key

          # Defines API key prefixes used with API Key authentications.
          #
          # @return [Hash] key: parameter name, value: API key prefix
          #
          # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
          #   config.api_key_prefix['api_key'] = 'Token'
          attr_accessor :api_key_prefix

          # Defines the username used with HTTP basic authentication.
          #
          # @return [String]
          attr_accessor :username

          # Defines the password used with HTTP basic authentication.
          #
          # @return [String]
          attr_accessor :password

          # Defines the access token (Bearer) used with OAuth2.
          attr_accessor :access_token

          # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
          # details will be logged with `logger.debug` (see the `logger` attribute).
          # Default to false.
          #
          # @return [true, false]
          attr_accessor :debugging

          # Defines the logger used for debugging.
          # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
          #
          # @return [#debug]
          attr_accessor :logger

          # Defines the temporary folder to store downloaded files
          # (for API endpoints that have file response).
          # Default to use `Tempfile`.
          #
          # @return [String]
          attr_accessor :temp_folder_path

          # The time limit for HTTP request in seconds.
          # Default to 0 (never times out).
          attr_accessor :timeout

          # Set this to false to skip client side validation in the operation.
          # Default to true.
          # @return [true, false]
          attr_accessor :client_side_validation

          ### TLS/SSL setting
          # Set this to false to skip verifying SSL certificate when calling API from https server.
          # Default to true.
          #
          # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
          #
          # @return [true, false]
          attr_accessor :ssl_verify

          ### TLS/SSL setting
          # Any `OpenSSL::SSL::` constant (see https://ruby-doc.org/stdlib-2.5.1/libdoc/openssl/rdoc/OpenSSL/SSL.html)
          #
          # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
          #
          attr_accessor :ssl_verify_mode

          ### TLS/SSL setting
          # Set this to customize the certificate file to verify the peer.
          #
          # @return [String] the path to the certificate file
          attr_accessor :ssl_ca_file

          ### TLS/SSL setting
          # Client certificate file (for client certificate)
          attr_accessor :ssl_client_cert

          ### TLS/SSL setting
          # Client private key file (for client certificate)
          attr_accessor :ssl_client_key

          ### Proxy setting
          # HTTP Proxy settings
          attr_accessor :proxy

          # Set this to customize parameters encoder of array parameter.
          # Default to nil. Faraday uses NestedParamsEncoder when nil.
          #
          # @see The params_encoder option of Faraday. Related source code:
          # https://github.com/lostisland/faraday/tree/main/lib/faraday/encoders
          attr_accessor :params_encoder


          attr_accessor :inject_format

          attr_accessor :force_ending_format

          attr_accessor :error_handler

          def initialize
            @scheme = 'https'
            @host = 'api.hubapi.com'
            @base_path = ''
            @server_index = 0
            @server_operation_index = {}
            @server_variables = {}
            @server_operation_variables = {}
            @api_key = {}
            @api_key_prefix = {}
            @client_side_validation = true
            @ssl_verify = true
            @ssl_verify_mode = nil
            @ssl_ca_file = nil
            @ssl_client_cert = nil
            @ssl_client_key = nil
            @middlewares = Hash.new { |h, k| h[k] = [] }
            @timeout = 60
            # return data as binary instead of file
            @return_binary_data = false
            @params_encoder = nil
            @debugging = false
            @inject_format = false
            @force_ending_format = false
            @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
            # error_handler params: { 'status_code': { max_retries: ..., seconds_delay: ... }, ... }
            @error_handler = {}

            yield(self) if block_given?
          end

          # The default Configuration object.
          def self.default
            @@default ||= Configuration.new
          end

          def configure
            yield(self) if block_given?
          end

          def scheme=(scheme)
            # remove :// from scheme
            @scheme = scheme.sub(/:\/\//, '')
          end

          def host=(host)
            # remove http(s):// and anything after a slash
            @host = host.sub(/https?:\/\//, '').split('/').first
          end

          def base_path=(base_path)
            # Add leading and trailing slashes to base_path
            @base_path = "/#{base_path}".gsub(/\/+/, '/')
            @base_path = '' if @base_path == '/'
          end

          # Returns base URL for specified operation based on server settings
          def base_url(operation = nil)
            index = server_operation_index.fetch(operation, server_index)
            return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if index == nil

            server_url(index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
          end

          # Gets API key (with prefix if set).
          # @param [String] param_name the parameter name of API key auth
          def api_key_with_prefix(param_name, param_alias = nil)
            key = @api_key[param_name]
            key = @api_key.fetch(param_alias, key) unless param_alias.nil?
            if @api_key_prefix[param_name]
              "#{@api_key_prefix[param_name]} #{key}"
            else
              key
            end
          end

          # Gets Basic Auth token string
          def basic_auth_token
            'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
          end

          # Returns Auth Settings hash for api client.
          def auth_settings
            {
              'oauth2' =>
                {
                  type: 'oauth2',
                  in: 'header',
                  key: 'Authorization',
                  value: "Bearer #{access_token}"
                },
            }
          end

          # Returns an array of Server setting
          def server_settings
            [
              {
                url: "https://api.hubapi.com",
                description: "No description provided",
              }
            ]
          end

          def operation_server_settings
            {
            }
          end

          # Returns URL based on server settings
          #
          # @param index array index of the server settings
          # @param variables hash of variable and the corresponding value
          def server_url(index, variables = {}, servers = nil)
            servers = server_settings if servers == nil

            # check array index out of bound
            if (index < 0 || index >= servers.size)
              fail ArgumentError, "Invalid index #{index} when selecting the server. Must be less than #{servers.size}"
            end

            server = servers[index]
            url = server[:url]

            return url unless server.key? :variables

            # go through variable and assign a value
            server[:variables].each do |name, variable|
              if variables.key?(name)
                if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
                  url.gsub! "{" + name.to_s + "}", variables[name]
                else
                  fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
                end
              else
                # use default value
                url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
              end
            end

            url
          end

          # Adds middleware to the stack
          def use(*middleware)
            set_faraday_middleware(:use, *middleware)
          end

          # Adds request middleware to the stack
          def request(*middleware)
            set_faraday_middleware(:request, *middleware)
          end

          # Adds response middleware to the stack
          def response(*middleware)
            set_faraday_middleware(:response, *middleware)
          end

          # Adds Faraday middleware setting information to the stack
          #
          # @example Use the `set_faraday_middleware` method to set middleware information
          #   config.set_faraday_middleware(:request, :retry, max: 3, methods: [:get, :post], retry_statuses: [503])
          #   config.set_faraday_middleware(:response, :logger, nil, { bodies: true, log_level: :debug })
          #   config.set_faraday_middleware(:use, Faraday::HttpCache, store: Rails.cache, shared_cache: false)
          #   config.set_faraday_middleware(:insert, 0, FaradayMiddleware::FollowRedirects, { standards_compliant: true, limit: 1 })
          #   config.set_faraday_middleware(:swap, 0, Faraday::Response::Logger)
          #   config.set_faraday_middleware(:delete, Faraday::Multipart::Middleware)
          #
          # @see https://github.com/lostisland/faraday/blob/v2.3.0/lib/faraday/rack_builder.rb#L92-L143
          def set_faraday_middleware(operation, key, *args, &block)
            unless [:request, :response, :use, :insert, :insert_before, :insert_after, :swap, :delete].include?(operation)
              fail ArgumentError, "Invalid faraday middleware operation #{operation}. Must be" \
                                  " :request, :response, :use, :insert, :insert_before, :insert_after, :swap or :delete."
            end

            @middlewares[operation] << [key, args, block]
          end
          ruby2_keywords(:set_faraday_middleware) if respond_to?(:ruby2_keywords, true)

          # Set up middleware on the connection
          def configure_middleware(connection)
            return if @middlewares.empty?

            [:request, :response, :use, :insert, :insert_before, :insert_after, :swap].each do |operation|
              next unless @middlewares.key?(operation)

              @middlewares[operation].each do |key, args, block|
                connection.builder.send(operation, key, *args, &block)
              end
            end

            if @middlewares.key?(:delete)
              @middlewares[:delete].each do |key, _args, _block|
                connection.builder.delete(key)
              end
            end
          end
        end
      end
    end
  end
end
