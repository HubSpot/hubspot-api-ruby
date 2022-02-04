require_rel '../../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module Tags
          class Client
            def self.api_classes
              %i[
                tag
              ].freeze
            end
  
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
