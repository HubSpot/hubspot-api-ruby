module Hubspot
  class Config
    CONFIG_KEYS = %i[api_key access_token]

    attr_accessor *CONFIG_KEYS

    def initialize(attrs = {})
      configure(attrs)
    end

    def configure(attrs)
      attrs.slice(*CONFIG_KEYS).each { |key, value| instance_variable_set("@#{key}", value) }
    end

    def reset!
      CONFIG_KEYS.each { |key| instance_variable_set("@#{key}", nil)}
    end

    def convert_to_client_config(client_config_class)
      validate_authorization

      client_config = client_config_class.new
      if !api_key.nil?
        client_config.api_key = api_key
      elsif !access_token.nil?
        client_config.access_token = access_token
      end

      client_config
    end

    private

    def validate_authorization
      return true if !access_token.nil? ^ !api_key.nil?

      raise Hubspot::ConfigurationError.new("You must provide either an access_token or an api_key")
    end
  end
end