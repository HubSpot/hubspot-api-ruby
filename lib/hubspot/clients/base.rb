Dir["#{ROOT_PATH}/hubspot/codegen/crm/pipelines/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Base
      attr_accessor :config

      def initialize(config)
        api_client_class = Hubspot.const_get("Client::Crm::#{self.class.name.split('::').last}::ApiClient")
        @api_client = api_client_class.new(config)
      end
    end
  end
end