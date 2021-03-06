require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Accounting::CallbacksApi' do
  subject(:api) { Hubspot::Crm::Extensions::Accounting::CallbacksApi.new }
  
  it { is_expected.to respond_to(:create_customer) }
  it { is_expected.to respond_to(:create_exchange_rate) }
  it { is_expected.to respond_to(:create_invoice) }
  it { is_expected.to respond_to(:create_term) }
  it { is_expected.to respond_to(:do_customer_search) }
  it { is_expected.to respond_to(:do_invoice_search) }
  it { is_expected.to respond_to(:do_product_search) }
  it { is_expected.to respond_to(:do_tax_search) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:invoice_pdf) }
end
