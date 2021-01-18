require 'spec_helper'

describe 'Hubspot::Crm::LineItems::BasicApi' do
  subject(:basic_api) { Hubspot::Crm::LineItems::BasicApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
