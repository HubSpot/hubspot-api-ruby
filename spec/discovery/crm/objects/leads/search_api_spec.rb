require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Leads::SearchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.leads.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
