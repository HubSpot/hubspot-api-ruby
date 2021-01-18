require 'spec_helper'

describe 'Hubspot::Crm::Deals::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Deals::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
