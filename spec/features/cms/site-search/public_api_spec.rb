require 'spec_helper'

describe 'Hubspot::Cms::SiteSearch::PublicApi' do
  subject(:api) { Hubspot::Cms::SiteSearch::PublicApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:search) }
end
