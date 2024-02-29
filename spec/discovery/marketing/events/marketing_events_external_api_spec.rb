require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::MarketingEventsExternalApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.marketing_events_external_api }
  
  it { is_expected.to respond_to(:complete) }
end
