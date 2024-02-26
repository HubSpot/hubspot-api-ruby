require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::V4::Schema::DefinitionsApi' do
  subject(:definitions_api) { Hubspot::Client.new(access_token: 'test').crm.associations.v4.schema.definitions_api }
  
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:update) }
end
