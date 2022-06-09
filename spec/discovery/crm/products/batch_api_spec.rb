require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Products::BatchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.products.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
