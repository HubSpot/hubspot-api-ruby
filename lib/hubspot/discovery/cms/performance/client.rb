require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Performance
        class Client
          def self.api_classes 
            %i[
              public_performance
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
