require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::Schema::TypesApi' do
  subject(:types_api) { Hubspot::Client.new(access_token: 'test').crm.associations.schema.types_api }
  
  it { is_expected.to respond_to(:get_all) }
end
