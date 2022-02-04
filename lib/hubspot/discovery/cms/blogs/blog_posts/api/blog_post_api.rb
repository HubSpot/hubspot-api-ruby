require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module BlogPosts
          class BlogPostApi
            def self.api_methods
              %i[
                archive
                archive_batch
                clone
                create
                create_batch
                get_by_id
                get_draft_by_id
                get_page
                get_previous_version
                get_previous_versions
                push_live
                read_batch
                reset_draft
                restore_previous_version
                restore_previous_version_to_draft
                schedule
                update
                update_batch
                update_draft
              ].freeze
            end
  
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
