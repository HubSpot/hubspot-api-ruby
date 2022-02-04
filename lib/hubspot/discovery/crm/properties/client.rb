require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Properties
        class Client
          def self.api_classes
            %i[
              batch
              core
              groups
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
