require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Hubdb
        class Client
          def self.api_classes 
            %i[
              rows
              rows_batch
              tables
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
