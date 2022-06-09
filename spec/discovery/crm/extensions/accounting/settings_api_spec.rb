require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Accounting::SettingsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.accounting.settings_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
end
