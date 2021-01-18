require 'spec_helper'

describe 'Hubspot::Crm::Properties::CoreApi' do
  subject(:core_api) { Hubspot::Crm::Properties::CoreApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_name) }
  it { is_expected.to respond_to(:update) }
end
