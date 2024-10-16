require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::SettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.settings_api }
  
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:update) }
end
