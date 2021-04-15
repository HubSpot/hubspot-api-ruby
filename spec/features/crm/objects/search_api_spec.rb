require 'spec_helper'

describe 'Hubspot::Crm::Objects::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Objects::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
