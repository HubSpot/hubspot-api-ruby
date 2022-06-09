require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SourceCode::ContentApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.source_code.content_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get) }
  it { is_expected.to respond_to(:replace) }
end
