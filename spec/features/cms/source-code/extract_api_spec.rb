require 'spec_helper'

describe 'Hubspot::Cms::SourceCode::ExtractApi' do
  subject(:api) { Hubspot::Cms::SourceCode::ExtractApi.new }
  
  it { is_expected.to respond_to(:extract_by_path) }
end
