require 'spec_helper'

describe 'Hubspot::Crm::Quotes::AssociationsApi' do
  subject(:associations_api) { Hubspot::Crm::Quotes::AssociationsApi.new }
  
  it { is_expected.to respond_to(:get_all) }
end
