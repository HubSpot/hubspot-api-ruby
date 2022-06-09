require 'spec_helper'

describe 'Hubspot::Discovery::CommunicationPreferences::DefinitionApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').communication_preferences.definition_api }
  
  it { is_expected.to respond_to(:get_page) }
end
