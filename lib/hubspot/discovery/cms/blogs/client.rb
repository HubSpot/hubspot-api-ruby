require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_modules
            %i[
              authors
              blog_posts
              tags
            ].freeze
          end
        end
      end
    end
  end
end
