require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module BlogPosts
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                blog_posts
              ].freeze
            end
          end
        end
      end
    end
  end
end
