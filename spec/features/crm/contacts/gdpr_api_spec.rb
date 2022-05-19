require 'spec_helper'

describe 'Hubspot::Crm::Contacts::GdprApi' do
  subject(:api) { Hubspot::Crm::Contacts::GdprApi.new }
  
  it { is_expected.to respond_to(:purge) }
end
