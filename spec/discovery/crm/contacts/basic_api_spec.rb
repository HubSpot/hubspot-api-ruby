require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Contacts::BasicApi' do
  subject(:basic_api) { Hubspot::Client.new(access_token: 'test').crm.contacts.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
