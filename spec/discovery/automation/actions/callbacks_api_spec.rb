require 'spec_helper'

describe 'Hubspot::Discovery::Automation::Actions::CallbacksApi' do
  subject(:callbacks_api) { Hubspot::Client.new(access_token: 'test').automation.actions.callbacks_api }
  
  it { is_expected.to respond_to(:complete) }
  it { is_expected.to respond_to(:complete_batch) }
end
