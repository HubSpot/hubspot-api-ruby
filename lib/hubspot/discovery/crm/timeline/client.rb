require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Timeline
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              events
              templates
              tokens
            ].freeze
          end
        end
      end
    end
  end
end
