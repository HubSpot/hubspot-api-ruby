require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Timeline
        class TokensApi
          def self.api_methods
            %i[
              archive
              create
              update
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
