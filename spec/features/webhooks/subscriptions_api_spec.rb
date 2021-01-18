require 'spec_helper'

describe 'Hubspot::Webhooks::SubscriptionsApi' do
  subject(:default_api) { Hubspot::Webhooks::SubscriptionsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_batch) }
end
