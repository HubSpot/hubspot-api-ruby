require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Files
      module Files
        class FoldersApi
          def self.api_methods
            %i[
              archive
              archive_by_path
              check_update_status
              create
              do_search
              get_by_id
              get_by_path
              update_properties
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
