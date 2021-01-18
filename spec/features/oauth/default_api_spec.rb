require 'spec_helper'

describe 'Hubspot::OAuth::DefaultApi' do
  subject(:default_api) { Hubspot::OAuth::DefaultApi.new }
  
  it { is_expected.to respond_to(:archive_refresh_token) }
  it { is_expected.to respond_to(:create_token) }
  it { is_expected.to respond_to(:get_access_token) }
  it { is_expected.to respond_to(:get_refresh_token) }
end
