module Services
  module Hubspot
    module Associations
      class GetById
        def initialize(company_id)
          @company_id = company_id
        end

        def call
          return unless associated_contacts_id_object.present?

          contacts_list = ::Hubspot::Client::Crm::Contacts::Api::BatchApi.new.read_batch(
            body: associated_contacts_id_object,
            auth_names: 'oauth2'
          ).results
        end

        private

        def associated_contacts_id_object
          id_objects = ::Hubspot::Client::Crm::Associations::Api::BatchApi.new.read_batch(
            'companies',
            'contacts',
            body: company_id_object,
            auth_names: 'oauth2'
          ).results
          id_objects = id_objects.present? ? id_objects[0].to : []
          ::Hubspot::Client::Crm::Contacts::Models::BatchReadInputSimplePublicObjectId.new(inputs: id_objects)
        end

        def company_id_object
          @company_id_object ||= ::Hubspot::Client::Crm::Associations::Models::BatchInputPublicObjectId.new(
            inputs: [@company_id]
          )
        end
      end
    end
  end
end