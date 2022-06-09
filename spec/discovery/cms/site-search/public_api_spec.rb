require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SiteSearch::PublicApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.site_search.public_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:search) }
end
