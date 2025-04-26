require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Performance
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            warn "[DEPRECATION] `public_performance` is deprecated."
            %i[
              public_performance
            ].freeze
          end
        end
      end
    end
  end
end
