require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::BasicApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_cancel) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
