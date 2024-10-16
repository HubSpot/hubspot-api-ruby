require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::ListAssociationsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.list_associations_api }
  
  it { is_expected.to respond_to(:associate_by_external_account_and_event_ids) }
  it { is_expected.to respond_to(:associate_by_marketing_event_id) }
  it { is_expected.to respond_to(:disassociate_by_external_account_and_event_ids) }
  it { is_expected.to respond_to(:disassociate_by_marketing_event_id) }
  it { is_expected.to respond_to(:get_all_by_external_account_and_event_ids) }
  it { is_expected.to respond_to(:get_all_by_marketing_event_id) }
end
