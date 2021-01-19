require 'spec_helper'

describe 'Hubspot::Automation::Actions::FunctionsApi' do
  subject(:functions_api) { Hubspot::Automation::Actions::FunctionsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_by_function_type) }
  it { is_expected.to respond_to(:create_or_replace) }
  it { is_expected.to respond_to(:create_or_replace_by_function_type) }
  it { is_expected.to respond_to(:get_by_function_type) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
