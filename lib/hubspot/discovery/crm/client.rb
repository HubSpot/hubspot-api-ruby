require_rel '../base_module_client'

module Hubspot
  module Discovery
    module Crm
      class Client
        def self.api_modules
          %i[
            associations
            companies
            contacts
            deals
            extensions
            imports
            line_items
            objects
            owners
            pipelines
            products
            properties
            quotes
            schemas
            tickets
            timeline
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
