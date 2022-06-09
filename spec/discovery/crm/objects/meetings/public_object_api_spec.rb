require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Meetings::PublicObjectApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.meetings.public_object_api }
  
  it { is_expected.to respond_to(:merge) }
end
