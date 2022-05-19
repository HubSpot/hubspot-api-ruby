require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Contacts::GdprApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.contacts.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
