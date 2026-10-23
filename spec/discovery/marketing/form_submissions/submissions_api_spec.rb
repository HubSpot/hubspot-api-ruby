require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::FormSubmissions::SubmissionsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.form_submissions.submissions_api }

  it { is_expected.to respond_to(:submit) }
  it { is_expected.to respond_to(:submit_unauthenticated) }
end
