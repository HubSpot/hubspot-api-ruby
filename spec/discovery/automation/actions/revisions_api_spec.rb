require 'spec_helper'

describe 'Hubspot::Discovery::Automation::Actions::RevisionsApi' do
  subject(:revisions_api) { Hubspot::Client.new(access_token: 'test').automation.actions.revisions_api }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
