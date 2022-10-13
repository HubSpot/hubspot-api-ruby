require_relative '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module UrlRedirects
        class RedirectsApi
          include Hubspot::Discovery::BaseApiClient

          def codegen_api_path
            super.gsub('url_redirects', 'url-redirects')
          end
        end
      end
    end
  end
end
