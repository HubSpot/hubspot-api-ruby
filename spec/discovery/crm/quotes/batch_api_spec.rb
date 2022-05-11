require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Quotes::BatchApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.quotes.batch_api }
  
  it { is_expected.to respond_to(:read) }
end
