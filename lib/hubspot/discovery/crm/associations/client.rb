require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        class Client
          include Hubspot::Discovery::BaseModuleClient
          def api_modules
            %i[
              v4
              schema
            ].freeze
          end
          def api_classes 
            %i[
              batch
            ].freeze
          end
        end
      end
    end
  end
end
