require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Quotes::BasicApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.quotes.basic_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
