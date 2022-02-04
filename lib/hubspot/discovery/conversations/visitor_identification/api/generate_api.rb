require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Conversations
      module VisitorIdentification
        class GenerateApi
          def api_methods
            %i[
              generate_token
            ].freeze
          end
        
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
