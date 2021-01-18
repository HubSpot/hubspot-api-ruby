require 'spec_helper'

describe 'Hubspot::Crm::Associations::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Associations::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
end
