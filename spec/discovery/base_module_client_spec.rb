require 'spec_helper'

describe 'Hubspot::Discovery::BaseModuleClient' do
  class Hubspot::Discovery::TestModuleClass
    def self.api_classes
      %i[
        settings
        subscriptions
      ].freeze
    end

    def self.api_modules
      %i[
        automation
        cms
      ].freeze
    end

    include Hubspot::Discovery::BaseModuleClient
  end

  subject(:client) { Hubspot::Discovery::TestModuleClass.new(api_key: 'test') }
  
  it { is_expected.to respond_to(:automation) }
  it { is_expected.to respond_to(:cms) }
  it { is_expected.to respond_to(:settings_api) }
  it { is_expected.to respond_to(:subscriptions_api) }
end
