require 'spec_helper'

describe 'Hubspot::Crm::Schemas::CoreApi' do
  subject(:core_api) { Hubspot::Crm::Schemas::CoreApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_association) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_association) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:update) }
end
