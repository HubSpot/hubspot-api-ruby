require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Products::SearchApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.products.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
