require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Calls::PublicObjectApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.calls.public_object_api }
  
  it { is_expected.to respond_to(:merge) }
end
