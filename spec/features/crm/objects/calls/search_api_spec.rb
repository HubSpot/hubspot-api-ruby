require 'spec_helper'

describe 'Hubspot::Crm::Objects::Calls::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::Calls::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
