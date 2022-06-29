require 'spec_helper'

describe 'Hubspot::Crm::Objects::FeedbackSubmissions::PublicObjectApi' do
  subject(:api) { Hubspot::Crm::Objects::FeedbackSubmissions::PublicObjectApi.new }
  
  it { is_expected.to respond_to(:merge) }
end
