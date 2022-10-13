require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Transactional
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              public_smtp_tokens
              single_send
            ].freeze
          end
        end
      end
    end
  end
end
