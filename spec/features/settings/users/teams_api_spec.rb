require 'spec_helper'

describe 'Hubspot::Settings::Users::TeamsApi' do
  subject(:api) { Hubspot::Settings::Users::TeamsApi.new }
  
  it { is_expected.to respond_to(:get_all) }
end
