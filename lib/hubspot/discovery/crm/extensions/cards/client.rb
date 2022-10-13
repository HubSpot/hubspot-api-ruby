require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Cards
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                cards
                sample_response
              ].freeze
            end
          end
        end
      end
    end
  end
end
