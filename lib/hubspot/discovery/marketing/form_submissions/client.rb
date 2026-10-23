require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module FormSubmissions
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              submissions
            ].freeze
          end
        end
      end
    end
  end
end
