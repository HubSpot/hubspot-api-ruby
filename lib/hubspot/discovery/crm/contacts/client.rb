require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Contacts
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              associations
              basic
              batch
              gdpr
              search
              public_object
            ].freeze
          end
        end
      end
    end
  end
end
