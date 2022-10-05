require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Cards
          class Client
            def self.api_classes
              %i[
                cards
                sample_response
              ].freeze
            end
    
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
