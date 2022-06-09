require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Companies::BatchApi' do
  subject(:batch_api) { Hubspot::Client.new(access_token: 'test').crm.companies.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
