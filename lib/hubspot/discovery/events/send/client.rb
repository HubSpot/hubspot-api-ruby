require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Events
      module Send
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              basic
              batch
            ].freeze
          end
        end
      end
    end
  end
end
