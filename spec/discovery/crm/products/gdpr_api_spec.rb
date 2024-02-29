require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Products::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.products.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
