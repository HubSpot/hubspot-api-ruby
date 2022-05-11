require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::BatchApi' do
  subject(:batch_api) { Hubspot::Client.new(api_key: 'test').crm.associations.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
end
