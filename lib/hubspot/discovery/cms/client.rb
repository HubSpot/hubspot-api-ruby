require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Cms
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            audit_logs
            blogs
            domains
            hubdb
            performance
            site_search
            source_code
            url_redirects
          ].freeze
        end
      end
    end
  end
end
