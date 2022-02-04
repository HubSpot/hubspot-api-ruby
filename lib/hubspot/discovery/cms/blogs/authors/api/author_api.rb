require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module Authors
          class AuthorApi
            def self.api_methods
              %i[
                archive
                archive_batch
                create
                create_batch
                get_by_id
                get_page
                read_batch
                update
                update_batch
              ].freeze
            end
  
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
