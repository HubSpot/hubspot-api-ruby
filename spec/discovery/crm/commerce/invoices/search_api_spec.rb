require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Commerce::Invoices::SearchApi' do
  subject(:SearchApi) { Hubspot::Client.new(access_token: 'test').crm.commerce.invoices.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
