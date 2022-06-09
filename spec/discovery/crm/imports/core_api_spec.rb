require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Imports::CoreApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.imports.core_api }
  
  it { is_expected.to respond_to(:cancel) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
