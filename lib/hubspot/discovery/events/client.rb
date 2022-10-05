require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Events
      class Client
        def self.api_classes
          %i[
            events
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
