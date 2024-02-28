require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Communications::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.communications.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
