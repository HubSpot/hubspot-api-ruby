require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Hubdb
        class RowsBatchApi
          def self.api_methods
            %i[
              batch_clone_draft_table_rows
              batch_create_draft_table_rows
              batch_purge_draft_table_rows
              batch_read_draft_table_rows
              batch_read_table_rows
              batch_replace_draft_table_rows
              batch_update_draft_table_rows
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
