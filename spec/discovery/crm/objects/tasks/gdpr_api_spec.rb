require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Tasks::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.tasks.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
