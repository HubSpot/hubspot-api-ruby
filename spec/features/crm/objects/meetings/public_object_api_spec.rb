require 'spec_helper'

describe 'Hubspot::Crm::Objects::Meetings::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::Meetings::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
