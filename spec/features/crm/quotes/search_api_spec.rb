require 'spec_helper'

describe 'Hubspot::Crm::Quotes::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Quotes::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
