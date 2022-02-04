require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Performance
        class PublicPerformanceApi
          def self.api_methods
            %i[
              get_page
              get_uptime
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
