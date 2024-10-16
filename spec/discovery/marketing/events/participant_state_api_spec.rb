require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::ParticipantStateApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.participant_state_api }
  
  it { is_expected.to respond_to(:get_participations_breakdown_by_contact_id) }
  it { is_expected.to respond_to(:get_participations_breakdown_by_external_event_id) }
  it { is_expected.to respond_to(:get_participations_breakdown_by_marketing_event_id) }
  it { is_expected.to respond_to(:get_participations_counters_by_event_external_id) }
  it { is_expected.to respond_to(:get_participations_counters_by_marketing_event_id) }
end
