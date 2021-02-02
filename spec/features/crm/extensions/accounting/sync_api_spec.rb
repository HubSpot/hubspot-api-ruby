require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Accounting::SyncApi' do
  subject(:api) { Hubspot::Crm::Extensions::Accounting::SyncApi.new }
  
  it { is_expected.to respond_to(:create_contact) }
  it { is_expected.to respond_to(:create_product) }
end
