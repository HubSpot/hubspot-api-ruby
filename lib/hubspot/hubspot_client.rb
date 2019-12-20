require_relative 'clients/base'
require_relative 'clients/objects'
require_relative 'clients/owners'
require_relative 'clients/pipelines'
# Dir["#{ROOT_PATH}/hubspot/clients/*.rb"].each { |f| require f }

module Hubspot
  class HubspotClient
    CLIENTS = %w[objects owners pipelines]

    attr_accessor :config

    def initialize(config = Hubspot::Config.new)
      @config = config
    end

    def configure(attrs)
      @config.configure(attrs)
    end

    CLIENTS.each do |method_name|
      define_method(method_name) do
        client_class = Object.const_get("Hubspot::Clients::#{method_name.capitalize}")
        config_class = Object.const_get("Hubspot::Client::Crm::#{method_name.capitalize}::Configuration")
        client_config = config.convert_to_client_config(config_class)
        client_class.new(client_config)
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