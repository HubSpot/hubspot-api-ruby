require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class CallbacksApi
          def self.api_methods
            %i[
              complete
              complete_batch
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
