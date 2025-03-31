require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::Goals::BasicApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.goals.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
