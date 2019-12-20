Dir["#{ROOT_PATH}/hubspot/codegen/crm/pipelines/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Base
      attr_accessor :client, :config

      def initialize(client, config)
        @client = client
        @config = config
      end
    end
  end
end