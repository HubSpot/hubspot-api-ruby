require_relative '../../../base_api_client'

module Hubspot
  module Discovery
    module Conversations
      module VisitorIdentification
        class GenerateApi
          include Hubspot::Discovery::BaseApiClient

          def codegen_api_path
            super.gsub('visitor_identification', 'visitor-identification')
          end
        end
      end
    end
  end
end
