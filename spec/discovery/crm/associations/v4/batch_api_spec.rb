require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::V4::BatchApi' do
  subject(:batch_api) { Hubspot::Client.new(access_token: 'test').crm.associations.v4.batch_api }

  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_labels) }
  it { is_expected.to respond_to(:create_default) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_page) }
end
