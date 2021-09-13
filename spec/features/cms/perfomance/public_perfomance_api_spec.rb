require 'spec_helper'

describe 'Hubspot::Cms::Performance::PublicPerformanceApi' do
  subject(:api) { Hubspot::Cms::Performance::PublicPerformanceApi.new }
  
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_uptime) }
end
