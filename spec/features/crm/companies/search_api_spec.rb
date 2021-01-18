require 'spec_helper'

describe 'Hubspot::Crm::Companies::SearchApi' do
  subject(:search_api) { Hubspot::Crm::Companies::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
