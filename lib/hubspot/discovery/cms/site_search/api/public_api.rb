require_relative '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module SiteSearch
        class PublicApi
          include Hubspot::Discovery::BaseApiClient

          def codegen_api_path
            super.gsub('site_search', 'site-search')
          end
        end
      end
    end
  end
end
