require 'spec_helper'

describe 'Hubspot::Marketing::Events::SettingsApi' do
  subject(:api) { Hubspot::Marketing::Events::SettingsApi.new }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
