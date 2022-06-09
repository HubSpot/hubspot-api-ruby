require 'spec_helper'

describe 'Hubspot::Crm::Objects::Notes::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::Notes::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
