require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Pipelines
        class Client
          def self.api_classes
            %i[
              pipeline_stages
              pipelines
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
