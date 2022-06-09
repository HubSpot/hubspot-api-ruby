require 'spec_helper'

describe 'Hubspot::Discovery::Cms::SourceCode::ValidationApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.source_code.validation_api }
  
  it { is_expected.to respond_to(:do_validate) }
end
