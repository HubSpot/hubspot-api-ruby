require 'spec_helper'

describe 'Hubspot::Discovery::Oauth::AccessTokensApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').oauth.access_tokens_api }
  
  it { is_expected.to respond_to(:get) }
end
