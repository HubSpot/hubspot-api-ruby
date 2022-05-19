require 'spec_helper'

describe 'Hubspot::Crm::Objects::GdprApi' do
  subject(:api) { Hubspot::Crm::Objects::GdprApi.new }
  
  it { is_expected.to respond_to(:purge) }
end
