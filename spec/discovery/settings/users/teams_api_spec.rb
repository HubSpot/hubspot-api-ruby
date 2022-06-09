require 'spec_helper'

describe 'Hubspot::Discovery::Settings::Users::TeamsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').settings.users.teams_api }
  
  it { is_expected.to respond_to(:get_all) }
end
