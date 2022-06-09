require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Companies::SearchApi' do
  subject(:search_api) { Hubspot::Client.new(access_token: 'test').crm.companies.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
