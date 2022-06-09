require 'spec_helper'

describe 'Hubspot::Discovery::Conversations::VisitorIdentification::GenerateApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').conversations.visitor_identification.generate_api }
  
  it { is_expected.to respond_to(:generate_token) }
end
