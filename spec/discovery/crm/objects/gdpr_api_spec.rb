require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::GdprApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.objects.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
