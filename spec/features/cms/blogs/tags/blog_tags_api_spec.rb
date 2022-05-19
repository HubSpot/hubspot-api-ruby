require 'spec_helper'

describe 'Hubspot::Cms::Blogs::Tags::BlogTagsApi' do
  subject(:api) { Hubspot::Cms::Blogs::Tags::BlogTagsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_batch) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_batch) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:read_batch) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_batch) }
end
