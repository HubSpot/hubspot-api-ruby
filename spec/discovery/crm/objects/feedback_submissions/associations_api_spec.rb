require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::FeedbackSubmissions::AssociationsApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.objects.feedback_submissions.associations_api }
  
  it { is_expected.to respond_to(:get_all) }
end
