require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::FeedbackSubmissions::GDPRApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.feedback_submissions.gdpr_api }
  
  it { is_expected.to respond_to(:purge) }
end
