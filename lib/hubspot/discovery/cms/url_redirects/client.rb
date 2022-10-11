require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module UrlRedirects
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              redirects
            ].freeze
          end
        end
      end
    end
  end
end
