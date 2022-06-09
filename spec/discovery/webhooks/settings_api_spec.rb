require 'spec_helper'

describe 'Hubspot::Discovery::Webhooks::SettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').webhooks.settings_api }
  
  it { is_expected.to respond_to(:clear) }
  it { is_expected.to respond_to(:configure) }
  it { is_expected.to respond_to(:get_all) }
end
