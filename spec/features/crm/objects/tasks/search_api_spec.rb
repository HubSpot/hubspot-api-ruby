require 'spec_helper'

describe 'Hubspot::Crm::Objects::Tasks::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::Tasks::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
