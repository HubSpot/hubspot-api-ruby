require 'spec_helper'

describe 'Hubspot::Crm::Objects::Tasks::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::Tasks::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
