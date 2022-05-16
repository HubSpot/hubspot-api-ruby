require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Timeline::TokensApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.timeline.tokens_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:update) }
end
