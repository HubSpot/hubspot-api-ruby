require 'spec_helper'

describe 'Hubspot::Webhooks::SettingsApi' do
  subject(:settings_api) { Hubspot::Webhooks::SettingsApi.new }
  
  it { is_expected.to respond_to(:clear) }
  it { is_expected.to respond_to(:configure) }
  it { is_expected.to respond_to(:get_all) }
end
