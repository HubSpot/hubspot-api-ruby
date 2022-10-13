require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module Authors
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                blog_authors
              ].freeze
            end
          end
        end
      end
    end
  end
end
