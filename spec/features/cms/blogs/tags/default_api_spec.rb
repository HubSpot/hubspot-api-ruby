require 'spec_helper'

describe 'Hubspot::Cms::Blogs::Tags::DefaultApi' do
  subject(:default_api) { Hubspot::Cms::Blogs::Tags::DefaultApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_0) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_0) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_0) }
end
