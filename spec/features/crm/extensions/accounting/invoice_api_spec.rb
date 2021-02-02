require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Accounting::InvoiceApi' do
  subject(:api) { Hubspot::Crm::Extensions::Accounting::InvoiceApi.new }
  
  it { is_expected.to respond_to(:create_payment) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
