require 'spec_helper'

describe 'Hubspot::Crm::Schemas::PublicObjectSchemasApi' do
  subject(:api) { Hubspot::Crm::Schemas::PublicObjectSchemasApi.new }
  
  it { is_expected.to respond_to(:purge) }
end
