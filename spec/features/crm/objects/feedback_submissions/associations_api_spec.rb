require 'spec_helper'

describe 'Hubspot::Crm::Objects::FeedbackSubmissions::AssociationsApi' do
  subject(:api) { Hubspot::Crm::Objects::FeedbackSubmissions::AssociationsApi.new }
  
  it { is_expected.to respond_to(:get_all) }
end
