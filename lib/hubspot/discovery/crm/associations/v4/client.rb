require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        module V4
          class Client
            include Hubspot::Discovery::BaseModuleClient
            def api_modules
              %i[
              schema
            ].freeze
            end
            def api_classes
              %i[
                basic
                batch
                report
              ].freeze
            end
          end
        end
      end
    end
  end
end
