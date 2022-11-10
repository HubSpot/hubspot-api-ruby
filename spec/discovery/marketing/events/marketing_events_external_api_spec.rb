require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::MarketingEventsExternalApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.marketing_events_external_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_batch) }
  it { is_expected.to respond_to(:complete) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_cancel) }
  it { is_expected.to respond_to(:archive_batch) }
  it { is_expected.to respond_to(:do_email_upsert_by_id) }
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:do_upsert) }
  it { is_expected.to respond_to(:do_upsert_by_id) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
