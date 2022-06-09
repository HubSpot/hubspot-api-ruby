require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Contacts::SearchApi' do
  subject(:search_api) { Hubspot::Client.new(access_token: 'test').crm.contacts.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
