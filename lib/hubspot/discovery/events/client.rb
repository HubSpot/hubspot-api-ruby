require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Events
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_classes
          %i[
            events
          ].freeze
        end
      end
    end
  end
end
