require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::DealSplits::BatchApi' do
  subject(:BatchApi) { Hubspot::Client.new(access_token: 'test').crm.objects.deal_splits.batch_api }
  
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:upsert) }
end
