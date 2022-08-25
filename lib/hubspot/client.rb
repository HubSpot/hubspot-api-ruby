require_rel 'discovery'

module Hubspot
  class Client
    def self.api_modules
      %i[
        automation
        cms
        communication_preferences
        conversations
        crm
        events
        files
        marketing
        o_auth
        settings
        webhooks
      ].freeze
    end

    include Hubspot::Discovery::BaseModuleClient

    private

    def self.base_module
      'Hubspot::Discovery'
    end

    def initialize(params)
      raise 'Please, pass :api_key or :access_token' if params[:api_key].nil? && params[:developer_api_key].nil? && params[:access_token].nil?
      @params = params
    end
  end
end
