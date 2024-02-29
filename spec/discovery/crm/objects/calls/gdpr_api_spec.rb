require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Calls::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.calls.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
