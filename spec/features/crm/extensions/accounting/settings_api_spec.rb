require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Accounting::SettingsApi' do
  subject(:api) { Hubspot::Crm::Extensions::Accounting::SettingsApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
end
