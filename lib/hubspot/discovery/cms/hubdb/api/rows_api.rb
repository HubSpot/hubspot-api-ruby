require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Hubdb
        class RowsApi
          def self.api_methods
            %i[
              clone_draft_table_row
              create_table_row
              get_draft_table_row_by_id
              get_table_row
              get_table_rows
              purge_draft_table_row
              read_draft_table_rows
              replace_draft_table_row
              update_draft_table_row
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
