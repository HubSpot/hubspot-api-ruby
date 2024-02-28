require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Tickets::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.tickets.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
