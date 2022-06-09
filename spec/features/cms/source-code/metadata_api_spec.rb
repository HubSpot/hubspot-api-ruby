require 'spec_helper'

describe 'Hubspot::Cms::SourceCode::MetadataApi' do
  subject(:api) { Hubspot::Cms::SourceCode::MetadataApi.new }
  
  it { is_expected.to respond_to(:get) }
end
