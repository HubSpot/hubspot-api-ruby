require 'spec_helper'

describe 'Hubspot::Cms::SourceCode::ContentApi' do
  subject(:api) { Hubspot::Cms::SourceCode::ContentApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get) }
  it { is_expected.to respond_to(:replace) }
end
