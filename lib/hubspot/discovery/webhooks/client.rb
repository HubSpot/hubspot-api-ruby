require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Webhooks
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_classes
          %i[
            settings
            subscriptions
          ].freeze
        end
      end
    end
  end
end
