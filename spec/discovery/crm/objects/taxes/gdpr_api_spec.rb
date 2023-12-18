require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Taxes::GdprApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.taxes.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
