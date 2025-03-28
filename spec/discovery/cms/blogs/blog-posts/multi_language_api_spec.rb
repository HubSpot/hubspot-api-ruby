require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Blogs::BlogPosts::MultiLanguageApi' do
  subject(:MultiLanguageApi) { Hubspot::Client.new(access_token: 'test').cms.blogs.blog_posts.multi_language_api }
  
  it { is_expected.to respond_to(:attach_to_lang_group) }
  it { is_expected.to respond_to(:create_lang_variation) }
  it { is_expected.to respond_to(:detach_from_lang_group) }
  it { is_expected.to respond_to(:set_lang_primary) }
  it { is_expected.to respond_to(:update_langs) }
end
