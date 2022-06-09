require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Products::AssociationsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.products.associations_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
