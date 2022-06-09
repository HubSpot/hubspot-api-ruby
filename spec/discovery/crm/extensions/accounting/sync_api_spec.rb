require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Accounting::SyncApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.accounting.sync_api }
  
  it { is_expected.to respond_to(:create_contact) }
  it { is_expected.to respond_to(:create_product) }
end
