require 'spec_helper'

describe 'Hubspot::Automation::Actions::CallbacksApi' do
  subject(:callbacks_api) { Hubspot::Automation::Actions::CallbacksApi.new }
  
  it { is_expected.to respond_to(:complete) }
  it { is_expected.to respond_to(:complete_batch) }
end
