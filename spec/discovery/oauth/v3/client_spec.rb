require 'spec_helper'

describe 'Hubspot::Discovery::Oauth::V3::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').oauth.v3 }

  it { is_expected.to respond_to(:advanced_api) }
end
