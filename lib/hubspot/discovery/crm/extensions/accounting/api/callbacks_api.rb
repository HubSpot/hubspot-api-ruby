require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        class CallbacksApi
          def self.api_methods
            %i[
              create_customer
              create_exchange_rate
              create_invoice
              create_term
              do_customer_search
              do_invoice_search
              do_product_search
              do_tax_search
              get_by_id
              invoice_pdf
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
