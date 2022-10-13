require_relative '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module SourceCode
        class ValidationApi
          include Hubspot::Discovery::BaseApiClient

          def codegen_api_path
            super.gsub('source_code', 'source-code')
          end
        end
      end
    end
  end
end
