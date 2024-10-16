require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Calling::RecordingSettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.calling.recording_settings_api }
  
  it { is_expected.to respond_to(:get_url_format) }
  it { is_expected.to respond_to(:mark_as_ready) }
  it { is_expected.to respond_to(:register_url_format) }
  it { is_expected.to respond_to(:update_url_format) }
end
