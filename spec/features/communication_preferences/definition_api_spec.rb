require 'spec_helper'

describe 'Hubspot::CommunicationPreferences::DefinitionApi' do
  subject(:api) { Hubspot::CommunicationPreferences::DefinitionApi.new }
  
  it { is_expected.to respond_to(:get_page) }
end
