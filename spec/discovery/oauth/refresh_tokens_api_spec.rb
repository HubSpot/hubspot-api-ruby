require 'spec_helper'

describe 'Hubspot::Discovery::OAuth::RefreshTokensApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').oauth.refresh_tokens_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:get) }
end
