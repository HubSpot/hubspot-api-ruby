require 'spec_helper'

describe 'Hubspot::Crm::Imports::PublicImportsApi' do
  subject(:api) { Hubspot::Crm::Imports::PublicImportsApi.new }
  
  it { is_expected.to respond_to(:get_errors) }
end
