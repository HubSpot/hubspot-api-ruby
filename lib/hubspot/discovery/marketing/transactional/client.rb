require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Transactional
        class Client
          def self.api_classes
            %i[
              public_smtp_tokens
              single_send
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
