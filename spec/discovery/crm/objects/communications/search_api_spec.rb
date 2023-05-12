require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Communications::SearchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.communications.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
