require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module SourceCode
        class Client
          def self.api_classes 
            %i[
              content
              extract
              metadata
              source_code_extract
              validation
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
