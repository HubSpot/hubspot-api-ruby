require 'spec_helper'

describe 'Hubspot::Crm::Objects::Notes::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::Notes::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
