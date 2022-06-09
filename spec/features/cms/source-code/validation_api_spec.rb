require 'spec_helper'

describe 'Hubspot::Cms::SourceCode::ValidationApi' do
  subject(:api) { Hubspot::Cms::SourceCode::ValidationApi.new }
  
  it { is_expected.to respond_to(:do_validate) }
end
