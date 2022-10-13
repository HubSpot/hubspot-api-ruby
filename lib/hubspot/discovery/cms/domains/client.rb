require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Domains
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              domains
            ].freeze
          end
        end
      end
    end
  end
end
