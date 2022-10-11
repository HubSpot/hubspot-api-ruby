require_relative '../base_module_client'

module Hubspot
  module Discovery
    module CommunicationPreferences
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_classes
          %i[
            definition
            status
          ].freeze
        end
      end
    end
  end
end
