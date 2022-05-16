require 'spec_helper'

describe 'Hubspot::Discovery::OAuth::RefreshTokensApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').o_auth.refresh_tokens_api }
  
  it { is_expected.to respond_to(:archive_refresh_token) }
  it { is_expected.to respond_to(:get_refresh_token) }
end
