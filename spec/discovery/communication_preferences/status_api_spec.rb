require 'spec_helper'

describe 'Hubspot::Discovery::CommunicationPreferences::StatusApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').communication_preferences.status_api }
  
  it { is_expected.to respond_to(:get_email_status) }
  it { is_expected.to respond_to(:subscribe) }
  it { is_expected.to respond_to(:unsubscribe) }
end
