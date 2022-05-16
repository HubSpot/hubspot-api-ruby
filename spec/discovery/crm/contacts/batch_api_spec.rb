require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Contacts::BatchApi' do
  subject(:batch_api) { Hubspot::Client.new(api_key: 'test').crm.contacts.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
