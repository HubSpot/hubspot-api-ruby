Dir["#{ROOT_PATH}/hubspot/codegen/crm/objects/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Objects < Clients::Base
      API = %w[AssociationsApi BasicApi BatchApi CreateNativeObjectsApi SearchApi]

      API.each do |api_name|
        define_method(api_name.underscore) do
          api_class = Object.const_get("Hubspot::Client::Crm::Objects::Api::#{api_name}")
          api_class.new(client_config)
        end
      end

    end
  end
end