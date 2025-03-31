require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module DealSplits
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                batch
              ].freeze
            end
          end
        end
      end
    end
  end
end
