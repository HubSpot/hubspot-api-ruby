require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::V4::BasicApi' do
  subject(:basic_api) { Hubspot::Client.new(access_token: 'test').crm.associations.v4.basic_api }

  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create_default) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_page) }
end
