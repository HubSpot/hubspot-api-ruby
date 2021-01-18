require 'spec_helper'

describe 'Hubspot::Crm::Tickets::AssociationsApi' do
  subject(:associations_api) { Hubspot::Crm::Tickets::AssociationsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
