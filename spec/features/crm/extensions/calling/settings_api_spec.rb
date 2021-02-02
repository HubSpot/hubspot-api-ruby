require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Calling::SettingsApi' do
  subject(:api) { Hubspot::Crm::Extensions::Calling::SettingsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
