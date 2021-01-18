require 'spec_helper'

describe 'Hubspot::Crm::Schemas::DefaultApi' do
  subject(:default_api) { Hubspot::Crm::Schemas::DefaultApi.new }
  
  it { is_expected.to respond_to(:purge) }
end
