require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Emails::StatisticsApi' do
  subject(:StatisticsApi) { Hubspot::Client.new(access_token: 'test').marketing.emails.statistics_api }
  
  it { is_expected.to respond_to(:get_emails_list) }
  it { is_expected.to respond_to(:get_histogram) }
end
