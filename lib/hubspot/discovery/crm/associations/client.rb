require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        class Client
          def self.api_classes 
            %i[
              batch
              type
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
