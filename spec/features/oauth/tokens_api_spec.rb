require 'spec_helper'

describe 'Hubspot::OAuth::TokensApi' do
  subject(:api) { Hubspot::OAuth::TokensApi.new }
  
  it { is_expected.to respond_to(:create_token) }
end
