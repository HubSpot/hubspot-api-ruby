require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Calling::SettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.calling.settings_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
