require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::V4::Schema::DefinitionConfigurationsApi' do
  subject(:definition_configurations_api) { Hubspot::Client.new(access_token: 'test').crm.associations.v4.schema.definition_configurations_api }
  
  it { is_expected.to respond_to(:batch_create) }
  it { is_expected.to respond_to(:batch_remove) }
  it { is_expected.to respond_to(:batch_update) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_all_between_two_object_types) }
end
