require 'spec_helper'

describe 'Hubspot::Crm::Objects::FeedbackSubmissions::BatchApi' do
  subject(:api) { Hubspot::Crm::Objects::FeedbackSubmissions::BatchApi.new }
  
  it { is_expected.to respond_to(:read_batch) }
end
