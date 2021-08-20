require 'spec_helper'

describe 'Hubspot::OAuth::RefreshTokensApi' do
  subject(:api) { Hubspot::OAuth::RefreshTokensApi.new }
  
  it { is_expected.to respond_to(:archive_refresh_token) }
  it { is_expected.to respond_to(:get_refresh_token) }
end
