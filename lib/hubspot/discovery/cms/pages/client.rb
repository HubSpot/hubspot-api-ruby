require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Pages
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              landing_pages
              site_pages
            ].freeze
          end
        end
      end
    end
  end
end
