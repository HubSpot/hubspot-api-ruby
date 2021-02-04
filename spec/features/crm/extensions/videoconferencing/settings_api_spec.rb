require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Videoconferencing::SettingsApi' do
  subject(:api) { Hubspot::Crm::Extensions::Videoconferencing::SettingsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
end
