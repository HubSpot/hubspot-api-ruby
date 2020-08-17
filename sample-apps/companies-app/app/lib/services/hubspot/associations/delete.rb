module Services
  module Hubspot
    module Associations
      class Delete
        def initialize(company_id, contacts_ids)
          @company_id = company_id
          @contacts_ids = contacts_ids
        end

        def call
          ::Hubspot::Crm::Associations::BatchApi.new.archive(
            'companies',
            'contacts',
            batch_input_public_association: association,
            auth_names: 'oauth2'
          )
        end

        private

        def association
          ::Hubspot::Crm::Associations::BatchInputPublicAssociation.new(
            inputs: contacts_to_assotiate
          )
        end

        def contacts_to_assotiate
          @contacts_ids.map do |id|
            ::Hubspot::Crm::Associations::PublicAssociation.new(
              from: ::Hubspot::Crm::Associations::PublicObjectId.new(id: @company_id),
              to: ::Hubspot::Crm::Associations::PublicObjectId.new(id: id),
              type: 'company_to_contact'
            )
          end
        end
      end
    end
  end
end