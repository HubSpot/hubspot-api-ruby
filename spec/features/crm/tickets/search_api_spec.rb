require 'spec_helper'

describe 'Hubspot::Crm::Tickets::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Tickets::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
