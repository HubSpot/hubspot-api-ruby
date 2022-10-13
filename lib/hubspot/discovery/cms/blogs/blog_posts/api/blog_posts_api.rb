require_relative '../../../../base_api_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module BlogPosts
          class BlogPostsApi
            include Hubspot::Discovery::BaseApiClient

            def codegen_api_path
              super.gsub('blog_posts/', 'blog-posts/')
            end
          end
        end
      end
    end
  end
end
