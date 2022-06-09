require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Owners::OwnersApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.owners.owners_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
