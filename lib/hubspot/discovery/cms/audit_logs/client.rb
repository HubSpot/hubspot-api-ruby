require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module AuditLogs
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              audit_logs
            ].freeze
          end
        end
      end
    end
  end
end
