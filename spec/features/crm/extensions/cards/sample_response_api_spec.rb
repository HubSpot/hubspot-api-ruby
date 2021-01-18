require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Cards::SampleResponseApi' do
  subject(:search_api) { Hubspot::Crm::Extensions::Cards::SampleResponseApi.new }
  
  it { is_expected.to respond_to(:get_cards_sample_response) }
end
