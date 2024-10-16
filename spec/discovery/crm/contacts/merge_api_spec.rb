require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Contacts::MergeApi' do
  subject(:public_object_api) { Hubspot::Client.new(access_token: 'test').crm.contacts.merge_api }
  
  it { is_expected.to respond_to(:merge) }
end
