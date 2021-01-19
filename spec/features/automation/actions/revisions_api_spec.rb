require 'spec_helper'

describe 'Hubspot::Automation::Actions::RevisionsApi' do
  subject(:revisions_api) { Hubspot::Automation::Actions::RevisionsApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
