require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Emails::MarketingEmailsApi' do
  subject(:MarketingEmailsApi) { Hubspot::Client.new(access_token: 'test').marketing.emails.marketing_emails_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:clone) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:create_ab_test_variation) }
  it { is_expected.to respond_to(:get_ab_test_variation) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_draft) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_revision_by_id) }
  it { is_expected.to respond_to(:get_revisions) }
  it { is_expected.to respond_to(:publish_or_send) }
  it { is_expected.to respond_to(:reset_draft) }
  it { is_expected.to respond_to(:restore_draft_revision) }
  it { is_expected.to respond_to(:restore_revision) }
  it { is_expected.to respond_to(:unpublish_or_cancel) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:upsert_draft) }
end
