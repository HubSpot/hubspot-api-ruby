require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::PostalMail::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.postal_mail.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
