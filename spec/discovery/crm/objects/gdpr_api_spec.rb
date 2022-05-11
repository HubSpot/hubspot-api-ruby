require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::GDPRApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.objects.g_d_p_r_api }
  
  it { is_expected.to respond_to(:purge_by_email) }
  it { is_expected.to respond_to(:purge_by_id) }
end
