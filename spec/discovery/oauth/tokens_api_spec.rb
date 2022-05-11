require 'spec_helper'

describe 'Hubspot::Discovery::OAuth::TokensApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').o_auth.tokens_api }
  
  it { is_expected.to respond_to(:create_token) }
end
