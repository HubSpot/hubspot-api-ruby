require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Blogs::Authors::BlogAuthorsApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').cms.blogs.authors.blog_authors_api }
  
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
