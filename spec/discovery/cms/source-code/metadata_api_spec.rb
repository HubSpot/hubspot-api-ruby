require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SourceCode::MetadataApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.source_code.metadata_api }
  
  it { is_expected.to respond_to(:get) }
end
