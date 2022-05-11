require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Accounting::SyncApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.extensions.accounting.sync_api }
  
  it { is_expected.to respond_to(:create_contact) }
  it { is_expected.to respond_to(:create_product) }
end
