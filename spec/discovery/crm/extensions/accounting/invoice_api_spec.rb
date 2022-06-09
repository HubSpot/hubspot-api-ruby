require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Accounting::InvoiceApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.accounting.invoice_api }
  
  it { is_expected.to respond_to(:create_payment) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
