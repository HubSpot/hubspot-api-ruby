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
                basic
                batch
                multi_language
              ].freeze
            end
          end
        end
      end
    end
  end
end
