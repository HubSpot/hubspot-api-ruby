require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::TypesApi' do
  subject(:batch_api) { Hubspot::Client.new(access_token: 'test').crm.associations.types_api }
  
  it { is_expected.to respond_to(:get_all) }
end
