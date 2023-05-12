require_relative '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        module V4
          module Schema
            class Client
              include Hubspot::Discovery::BaseModuleClient
              def api_classes
                %i[
                  definitions
                ].freeze
              end
            end
          end
        end
      end
    end
  end
end
