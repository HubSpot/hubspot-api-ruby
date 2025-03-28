require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Blogs::BlogPosts::BatchApi' do
  subject(:BatchApi) { Hubspot::Client.new(access_token: 'test').cms.blogs.blog_posts.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }

end
