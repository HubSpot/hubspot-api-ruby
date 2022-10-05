require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Webhooks
      class Client
        def self.api_classes
          %i[
            settings
            subscriptions
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
