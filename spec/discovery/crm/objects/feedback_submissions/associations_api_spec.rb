require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::FeedbackSubmissions::AssociationsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.feedback_submissions.associations_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_page) }
end
