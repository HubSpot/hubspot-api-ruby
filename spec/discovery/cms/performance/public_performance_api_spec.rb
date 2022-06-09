require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Performance::PublicPerformanceApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.performance.public_performance_api }
  
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_uptime) }
end
