require 'spec_helper'

describe 'Hubspot::Discovery::Automation::Actions::DefinitionsApi' do
  subject(:definitions_api) { Hubspot::Client.new(access_token: 'test').automation.actions.definitions_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
