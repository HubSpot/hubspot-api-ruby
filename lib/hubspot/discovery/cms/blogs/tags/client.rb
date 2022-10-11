require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module Tags
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                blog_tags
              ].freeze
            end
          end
        end
      end
    end
  end
end
