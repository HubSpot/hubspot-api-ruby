require 'spec_helper'

describe 'Hubspot::Cms::Performance::DefaultApi' do
  subject(:default_api) { Hubspot::Cms::Performance::DefaultApi.new }
  
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_uptime) }
end
