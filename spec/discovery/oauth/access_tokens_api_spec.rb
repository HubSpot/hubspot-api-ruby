require 'spec_helper'

describe 'Hubspot::Discovery::OAuth::AccessTokensApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').o_auth.access_tokens_api }
  
  it { is_expected.to respond_to(:get_access_token) }
end
