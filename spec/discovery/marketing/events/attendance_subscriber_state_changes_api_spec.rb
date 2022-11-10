require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::AttendanceSubscriberStateChangesApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.attendance_subscriber_state_changes_api }

  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_by_email) }
end
