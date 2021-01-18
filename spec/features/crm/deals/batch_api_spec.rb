require 'spec_helper'

describe 'Hubspot::Crm::Deals::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Deals::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
