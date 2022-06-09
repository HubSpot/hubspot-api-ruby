require 'spec_helper'

describe 'Hubspot::Crm::Objects::Meetings::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::Meetings::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
