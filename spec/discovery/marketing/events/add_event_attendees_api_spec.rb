require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::AddEventAttendeesApi' do
  subject(:add_event_attendees_api) { Hubspot::Client.new(access_token: 'test').marketing.events.add_event_attendees_api }

  it { is_expected.to respond_to(:record_by_contact_emails) }
  it { is_expected.to respond_to(:record_by_contact_id) }
  it { is_expected.to respond_to(:record_by_contact_ids) }
  it { is_expected.to respond_to(:record_by_email) }
end
