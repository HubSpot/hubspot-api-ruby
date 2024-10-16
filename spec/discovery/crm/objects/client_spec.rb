require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm.objects }
  
  it { is_expected.to respond_to(:calls) }
  it { is_expected.to respond_to(:communications) }
  it { is_expected.to respond_to(:emails) }
  it { is_expected.to respond_to(:feedback_submissions) }
  it { is_expected.to respond_to(:goals) }
  it { is_expected.to respond_to(:leads) }
  it { is_expected.to respond_to(:meetings) }
  it { is_expected.to respond_to(:notes) }
  it { is_expected.to respond_to(:postal_mail) }
  it { is_expected.to respond_to(:tasks) }
end
