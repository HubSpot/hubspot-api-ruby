require 'net/http'
require 'uri'
require 'json'
require 'openssl'

require_relative 'http_auth'

module Hubspot
  module Helpers
    class Request
      attr_reader :url, :method, :headers, :body

      def initialize(config, options = {})
        @config = config || {}
        @options = options || {}
        @base_url = config.fetch("base_url", "https://api.hubapi.com")
        @headers = {}
        @body = nil
        @default_json = options.fetch("default_json", true)
        @method = (@options[:method] || "GET").upcase

        init_headers
        apply_auth
        @url = generate_url
        set_body
      end

      def apply_auth
        auth = Hubspot::Helpers::Auth.choose_auth(@config, @options)

        case auth[:auth_type]
        when :api_key
          @options[:qs] ||= {}
          @options[:qs][:hapikey] ||= @options[:auth_value]
        when :access_token
          @headers["Authorization"] = "Bearer #{@config[:access_token]}"
        end
      end

      def init_headers
        @headers["Content-Type"] = "application/json" if @default_json
        @headers.merge!(get_default_headers)
        @headers.merge!(@options[:headers] || {})
      end

      def get_default_headers
        headers = {
          "User-Agent" => @config.fetch("user_agent", "custom-ruby-client/1.0")
        }
        headers["Accept"] = "application/json, */*;q=0.8" if @default_json
        headers
      end

      def get_query_string
        qs = @options[:qs]
        return nil unless qs

        URI.encode_www_form(qs)
      rescue => e
        puts "Error processing query string: #{e.message}"
        nil
      end

      def generate_url
        path = @options.fetch(:path, "")
        url = URI.join(@base_url, path).to_s
      
        query_string = get_query_string
        if query_string
          delimiter = url.include?('?') ? '&' : '?'
          url += "#{delimiter}#{query_string}"
        end

        validate_url(url)
        url
      end

      def validate_url(url)
        URI.parse(url)
      rescue URI::InvalidURIError => e
        raise "Invalid URL generated: #{url} - #{e.message}"
      end      

      def set_body
        if @options.key?(:body)
          @body = @options[:body]
          @body = @body.to_json if @default_json && (@body.is_a?(Hash) || @body.is_a?(Array))
        end
      end

      def send
        uri = URI.parse(@url)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = uri.scheme == "https"

        http_methods = {
          "GET" => Net::HTTP::Get,
          "POST" => Net::HTTP::Post,
          "PUT" => Net::HTTP::Put,
          "DELETE" => Net::HTTP::Delete
        }

        request_class = http_methods[@method]
        raise "Unsupported HTTP method: #{@method}" unless request_class

        request = request_class.new(uri.request_uri, @headers)
        request.body = @body if @body

        begin
          response = http.request(request)
          response
        rescue StandardError => e
          puts "HTTP error occurred: #{e.message}"
          raise
        end
      end
    end
  end
end
