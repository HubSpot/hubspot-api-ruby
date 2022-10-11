require_relative '../base_module_client'
require_relative '../../helpers/get_all_helper'

module Hubspot
  module Discovery
    module Crm
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
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
      end
    end
  end
end
