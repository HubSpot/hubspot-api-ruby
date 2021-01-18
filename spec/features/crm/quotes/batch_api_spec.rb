require 'spec_helper'

describe 'Hubspot::Crm::Quotes::BatchApi' do
  subject(:batch_api) { Hubspot::Crm::Quotes::BatchApi.new }
  
  it { is_expected.to respond_to(:read) }
end
