require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class FunctionsApi
          def api_methods
            %i[
              archive
              archive_by_function_type
              create_or_replace
              create_or_replace_by_function_type
              get_by_function_type
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
