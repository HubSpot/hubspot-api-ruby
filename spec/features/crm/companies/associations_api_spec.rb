require 'spec_helper'

describe 'Hubspot::Crm::Companies::AssociationsApi' do
  subject(:associations_api) { Hubspot::Crm::Companies::AssociationsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
