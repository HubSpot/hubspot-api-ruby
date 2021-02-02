require 'spec_helper'

describe 'Hubspot::Crm::Objects::FeedbackSubmissions::SearchApi' do
  subject(:api) { Hubspot::Crm::Objects::FeedbackSubmissions::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
