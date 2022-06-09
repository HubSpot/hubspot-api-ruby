require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Pipelines::PipelinesApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.pipelines.pipelines_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
