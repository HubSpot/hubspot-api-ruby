require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Quotes::AssociationsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.quotes.associations_api }
  
  it { is_expected.to respond_to(:get_all) }
end
