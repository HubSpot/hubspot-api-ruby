require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module UrlRedirects
        class Client
          def self.api_classes 
            %i[
              redirects
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
