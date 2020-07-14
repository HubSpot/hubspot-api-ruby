module Services
  module Hubspot
    module Pipelines
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          ::Hubspot::Crm::Pipelines::PipelinesApi.new.get_by_id(:deals, @id, auth_names: 'oauth2')
        end
      end
    end
  end
end