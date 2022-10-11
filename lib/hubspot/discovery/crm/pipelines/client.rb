require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Pipelines
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              pipeline_stages
              pipelines
            ].freeze
          end
        end
      end
    end
  end
end
