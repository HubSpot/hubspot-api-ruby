require 'spec_helper'

describe 'Hubspot::Crm::Objects::Calls::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::Calls::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
