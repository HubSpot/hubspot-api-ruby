require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::BasicApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:batch_archive) }
  it { is_expected.to respond_to(:batch_upsert) }
  it { is_expected.to respond_to(:cancel) }
  it { is_expected.to respond_to(:complete) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:get_details) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:upsert) }
end
