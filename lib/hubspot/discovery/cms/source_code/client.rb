require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module SourceCode
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              content
              extract
              metadata
              validation
            ].freeze
          end
        end
      end
    end
  end
end
