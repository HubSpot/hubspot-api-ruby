require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SourceCode::SourceCodeExtractApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.source_code.source_code_extract_api }
  
  it { is_expected.to respond_to(:do_async) }
  it { is_expected.to respond_to(:get_async_status) }
end
