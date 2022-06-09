require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Videoconferencing::SettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.videoconferencing.settings_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
end
