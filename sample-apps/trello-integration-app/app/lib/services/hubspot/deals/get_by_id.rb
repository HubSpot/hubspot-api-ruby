module Services
  module Hubspot
    module Deals
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          ::Hubspot::Crm::Deals::BasicApi.new.get_by_id(@id, auth_names: 'oauth2')
        end
      end
    end
  end
end