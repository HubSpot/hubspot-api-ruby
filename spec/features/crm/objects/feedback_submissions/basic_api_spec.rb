require 'spec_helper'

describe 'Hubspot::Crm::Objects::FeedbackSubmissions::BasicApi' do
  subject(:api) { Hubspot::Crm::Objects::FeedbackSubmissions::BasicApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
