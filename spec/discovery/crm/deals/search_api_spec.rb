require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Deals::SearchApi' do
  subject(:search_api) { Hubspot::Client.new(api_key: 'test').crm.deals.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
