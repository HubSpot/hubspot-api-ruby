require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        module Schema
            class Client
              include Hubspot::Discovery::BaseModuleClient
              def api_classes
                %i[
                  types
                ].freeze
            end
          end
        end
      end
    end
  end
end
