require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module AuditLogs
        class AuditLogsApi
          def api_methods
            %i[
              get_page
            ].freeze
          end
        
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
