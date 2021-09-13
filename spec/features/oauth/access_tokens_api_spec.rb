require 'spec_helper'

describe 'Hubspot::OAuth::AccessTokensApi' do
  subject(:api) { Hubspot::OAuth::AccessTokensApi.new }
  
  it { is_expected.to respond_to(:get_access_token) }
end
