require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Marketing
      module Transactional
        class SingleSendApi
          def self.api_methods
            %i[
              send_email
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
