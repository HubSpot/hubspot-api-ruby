require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Cards::SampleResponseApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.cards.sample_response_api }
  
  it { is_expected.to respond_to(:get_cards_sample_response) }
end
