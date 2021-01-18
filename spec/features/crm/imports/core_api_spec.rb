require 'spec_helper'

describe 'Hubspot::Crm::Imports::CoreApi' do
  subject(:basic_api) { Hubspot::Crm::Imports::CoreApi.new }
  
  it { is_expected.to respond_to(:cancel) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
