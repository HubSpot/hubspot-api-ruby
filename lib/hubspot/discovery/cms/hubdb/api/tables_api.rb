require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Hubdb
        class TablesApi
          def self.api_methods
            %i[
              archive_table
              clone_draft_table
              create_table
              export_draft_table
              export_table
              get_all_draft_tables
              get_all_tables
              get_draft_table_details_by_id
              get_table_details
              import_draft_table
              publish_draft_table
              unpublish_table
              reset_draft_table
              update_draft_table
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
