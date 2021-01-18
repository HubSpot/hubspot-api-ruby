require 'spec_helper'

describe 'Hubspot::Crm::Products::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Products::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
