require 'spec_helper'

describe 'Hubspot::Crm::Products::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Products::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
