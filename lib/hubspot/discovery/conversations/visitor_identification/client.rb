require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Conversations
      module VisitorIdentification
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              generate
            ].freeze
          end
        end
      end
    end
  end
end
