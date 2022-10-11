require_relative '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module AuditLogs
        class AuditLogsApi
          include Hubspot::Discovery::BaseApiClient

          def codegen_api_path
            super.gsub('audit_logs/', 'audit-logs/')
          end
        end
      end
    end
  end
end
