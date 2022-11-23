require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Deals::PublicObjectApi' do
  subject(:public_object_api) { Hubspot::Client.new(access_token: 'test').crm.deals.public_object_api }
  
  it { is_expected.to respond_to(:merge) }
end
