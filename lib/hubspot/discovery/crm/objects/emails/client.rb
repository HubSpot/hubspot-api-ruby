require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module Emails
          class Client
            def self.api_classes
              %i[
                associations
                basic
                batch
                public_object
                search
              ].freeze
            end
    
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
