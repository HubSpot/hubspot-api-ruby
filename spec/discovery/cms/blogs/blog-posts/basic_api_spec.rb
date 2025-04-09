require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Blogs::BlogPosts::BasicApi' do
  subject(:BasicApi) { Hubspot::Client.new(access_token: 'test').cms.blogs.blog_posts.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:clone) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_draft_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_previous_version) }
  it { is_expected.to respond_to(:get_previous_versions) }
  it { is_expected.to respond_to(:push_live) }
  it { is_expected.to respond_to(:reset_draft) }
  it { is_expected.to respond_to(:restore_previous_version) }
  it { is_expected.to respond_to(:restore_previous_version_to_draft) }
  it { is_expected.to respond_to(:schedule) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_draft) }
end
