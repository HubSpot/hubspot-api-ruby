require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module AuditLogs
        class Client
          def self.api_classes 
            %i[
              audit_logs
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
