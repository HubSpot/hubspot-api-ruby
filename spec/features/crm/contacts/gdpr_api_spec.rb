require 'spec_helper'

describe 'Hubspot::Crm::Contacts::GDPRApi' do
  subject(:api) { Hubspot::Crm::Contacts::GDPRApi.new }
  
  it { is_expected.to respond_to(:purge_by_email) }
  it { is_expected.to respond_to(:purge_by_id) }
end
