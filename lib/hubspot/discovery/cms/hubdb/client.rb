require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Hubdb
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              rows
              rows_batch
              tables
            ].freeze
          end
        end
      end
    end
  end
end
