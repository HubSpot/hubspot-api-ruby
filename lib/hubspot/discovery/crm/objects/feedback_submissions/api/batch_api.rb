require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module FeedbackSubmissions
          class BatchApi
            def self.api_methods
              %i[
                read_batch
              ].freeze
            end
    
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
