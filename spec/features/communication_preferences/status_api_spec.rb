require 'spec_helper'

describe 'Hubspot::CommunicationPreferences::StatusApi' do
  subject(:api) { Hubspot::CommunicationPreferences::StatusApi.new }
  
  it { is_expected.to respond_to(:get_email_status) }
  it { is_expected.to respond_to(:subscribe) }
  it { is_expected.to respond_to(:unsubscribe) }
end
