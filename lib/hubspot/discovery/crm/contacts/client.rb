require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Contacts
        class Client
          def self.api_classes 
            %i[
              associations
              basic
              batch
              g_d_p_r
              search
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
