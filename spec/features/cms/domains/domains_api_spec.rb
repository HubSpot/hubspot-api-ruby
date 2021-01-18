require 'spec_helper'

describe 'Hubspot::Cms::Domains::DomainsApi' do
  subject(:domains_api) { Hubspot::Cms::Domains::DomainsApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
