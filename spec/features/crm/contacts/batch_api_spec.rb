require 'spec_helper'

describe 'Hubspot::Crm::Contacts::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Contacts::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
