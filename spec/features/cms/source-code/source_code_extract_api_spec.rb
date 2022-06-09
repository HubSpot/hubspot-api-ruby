require 'spec_helper'

describe 'Hubspot::Cms::SourceCode::SourceCodeExtractApi' do
  subject(:api) { Hubspot::Cms::SourceCode::SourceCodeExtractApi.new }
  
  it { is_expected.to respond_to(:do_async) }
  it { is_expected.to respond_to(:get_async_status) }
end
