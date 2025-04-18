require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::FeedbackSubmissions::BatchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.objects.feedback_submissions.batch_api }
  
  it { is_expected.to respond_to(:read) }
end
