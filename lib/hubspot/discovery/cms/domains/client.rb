require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Domains
        class Client
          def self.api_classes 
            %i[
              domains
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
