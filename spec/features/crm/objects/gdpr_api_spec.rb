require 'spec_helper'

describe 'Hubspot::Crm::Objects::GDPRApi' do
  subject(:api) { Hubspot::Crm::Objects::GDPRApi.new }
  
  it { is_expected.to respond_to(:purge_by_email) }
  it { is_expected.to respond_to(:purge_by_id) }
end
