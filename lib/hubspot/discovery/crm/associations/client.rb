require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        class Client
          include Hubspot::Discovery::BaseModuleClient
          def api_modules
            %i[v4].freeze
          end
          def api_classes 
            %i[
              batch
              types
            ].freeze
          end
        end
      end
    end
  end
end
