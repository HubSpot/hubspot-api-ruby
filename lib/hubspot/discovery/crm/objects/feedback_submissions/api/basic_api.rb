require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module FeedbackSubmissions
          class BasicApi
            def self.api_methods
              %i[
                get_by_id
                get_page
              ].freeze
            end
    
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
