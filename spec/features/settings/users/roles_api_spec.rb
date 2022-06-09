require 'spec_helper'

describe 'Hubspot::Settings::Users::RolesApi' do
  subject(:api) { Hubspot::Settings::Users::RolesApi.new }
  
  it { is_expected.to respond_to(:get_all) }
end
