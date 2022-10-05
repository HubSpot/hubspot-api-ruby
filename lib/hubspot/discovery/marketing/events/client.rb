require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Events
        class Client
          def self.api_classes
            %i[
              basic
              batch
              search
              settings
              subscriber_state_changes
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
