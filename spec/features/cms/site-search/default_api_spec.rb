require 'spec_helper'

describe 'Hubspot::Cms::SiteSearch::DefaultApi' do
  subject(:default_api) { Hubspot::Cms::SiteSearch::DefaultApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:search) }
end
