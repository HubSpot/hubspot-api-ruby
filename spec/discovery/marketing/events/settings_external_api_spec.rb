require 'spec_helper'

describe 'Hubspot::Marketing::Events::SettingsExternalApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.settings_external_api }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
