require 'spec_helper'

describe 'Hubspot::Crm::Tickets::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Tickets::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
end
