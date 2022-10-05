require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Conversations
      module VisitorIdentification
        class Client
          def self.api_classes 
            %i[
              generate
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
