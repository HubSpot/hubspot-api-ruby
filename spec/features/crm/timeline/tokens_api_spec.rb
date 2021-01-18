require 'spec_helper'

describe 'Hubspot::Crm::Timeline::TokensApi' do
  subject(:templates_api) { Hubspot::Crm::Timeline::TokensApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:update) }
end
