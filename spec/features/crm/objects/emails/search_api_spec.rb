require 'spec_helper'

describe 'Hubspot::Crm::Objects::Emails::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::Emails::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
