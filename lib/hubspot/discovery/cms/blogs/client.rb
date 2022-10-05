require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        class Client
          def self.api_modules
            %i[
              authors
              blog_posts
              tags
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
