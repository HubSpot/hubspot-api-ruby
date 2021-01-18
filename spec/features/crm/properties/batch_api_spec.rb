require 'spec_helper'

describe 'Hubspot::Crm::Properties::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Properties::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
end
