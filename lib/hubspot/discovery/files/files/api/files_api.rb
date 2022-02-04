require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Files
      module Files
        class FilesApi
          def self.api_methods
            %i[
              archive
              archive_gdpr
              check_import
              do_search
              get_by_id
              get_signed_url
              import_from_url
              replace
              update_properties
              upload
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
