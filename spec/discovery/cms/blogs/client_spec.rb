require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').cms.blogs }
  
  it { is_expected.to respond_to(:authors) }
  it { is_expected.to respond_to(:blog_posts) }
  it { is_expected.to respond_to(:tags) }
end
