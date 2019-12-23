require_relative 'clients/base'
require_relative 'clients/objects'
require_relative 'clients/owners'
require_relative 'clients/pipelines'
# Dir["#{ROOT_PATH}/hubspot/clients/*.rb"].each { |f| require f }

module Hubspot
  class HubspotClient
    CLIENTS = {
      objects_client: 'Objects',
      owners_client: 'Owners',
      pipelines_client: 'Pipelines'
    }

    attr_accessor :config

    def initialize(config = Hubspot::Config.new)
      @config = config
    end

    def configure
      block_given? ? yield(@config) : @config
    end

    CLIENTS.each do |method_name, client_name|
      define_method(method_name) do
        client_class = Object.const_get("Hubspot::Clients::#{client_name}")
        config_class = Object.const_get("Hubspot::Client::Crm::#{client_name}::Configuration")
        client_config = config.convert_to_client_config(config_class)
        if instance_variable_defined?("@#{method_name}")
          instance_variable_get("@#{method_name}")
        else
          instance_variable_set("@#{method_name}", client_class.new(client_config))
        end
      end
    end

    class << self
      def create_with_api_key(api_key)
        config = Hubspot::Config.new(api_key: api_key)
        self.new(config)
      end

      def create_with_access_token(access_token)
        config = Hubspot::Config.new(access_token: access_token)
        self.new(config)
      end
    end
  end
end