module Services
  module Hubspot
    module Properties
      class Update
        def initialize(name, params)
          @name = name
          @params = params
        end

        def call
          core_api = ::Hubspot::Crm::Properties::CoreApi.new
          core_api.update('contact', @name, property_update, auth_names: 'oauth2')
        end

        private

        def property_update
          @params.filter! do |(key, value)|
            ::Hubspot::Crm::Properties::PropertyUpdate.attribute_map.keys.include?(key.to_sym)
          end
          @property_update ||= ::Hubspot::Crm::Properties::PropertyUpdate.new(@params)
        end
      end
    end
  end
end
