require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module SiteSearch
        class PublicApi
          def self.api_methods
            %i[
              get_by_id
              search
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
