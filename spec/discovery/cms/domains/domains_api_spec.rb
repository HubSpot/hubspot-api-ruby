require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Domains::DomainsApi' do
  subject(:domains_api) { Hubspot::Client.new(access_token: 'test').cms.domains.domains_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
