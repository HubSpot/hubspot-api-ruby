require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SourceCode::ExtractApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.source_code.extract_api }
  
  it { is_expected.to respond_to(:extract_by_path) }
end
