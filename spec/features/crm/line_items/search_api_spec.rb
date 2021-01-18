require 'spec_helper'

describe 'Hubspot::Crm::LineItems::SearchApi' do
  subject(:search_api) { Hubspot::Crm::LineItems::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
