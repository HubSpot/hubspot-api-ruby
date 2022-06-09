require 'spec_helper'

describe 'Hubspot::Crm::Objects::Calls::BatchApi' do
  subject(:api) { Hubspot::Crm::Objects::Calls::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
