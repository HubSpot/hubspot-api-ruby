require 'spec_helper'

describe 'Hubspot::Discovery::Webhooks::SubscriptionsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').webhooks.subscriptions_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_batch) }
end
