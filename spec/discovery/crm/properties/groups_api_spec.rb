require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Properties::GroupsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.properties.groups_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_name) }
  it { is_expected.to respond_to(:update) }
end
