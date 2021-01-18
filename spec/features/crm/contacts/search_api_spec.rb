require 'spec_helper'

describe 'Hubspot::Crm::Contacts::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Contacts::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
