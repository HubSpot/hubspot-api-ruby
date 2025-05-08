require 'spec_helper'

describe 'Hubspot::Discovery::Oauth::TokensApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').oauth.tokens_api }
  
  it { is_expected.to respond_to(:create) }
end
