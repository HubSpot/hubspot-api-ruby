require 'spec_helper'

describe 'Hubspot::Crm::Properties::GroupsApi' do
  subject(:groups_api) { Hubspot::Crm::Properties::GroupsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_name) }
  it { is_expected.to respond_to(:update) }
end
