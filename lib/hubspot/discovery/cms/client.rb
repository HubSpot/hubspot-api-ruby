require_rel '../base_module_client'

module Hubspot
  module Discovery
    module Cms
      class Client
        def self.api_modules
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

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
