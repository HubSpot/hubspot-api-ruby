require_relative 'discovery/base_module_client'

module Hubspot
  class Client
    include Hubspot::Discovery::BaseModuleClient

    def initialize(params)
      raise 'Please, pass :api_key or :access_token' if params[:api_key].nil? && params[:developer_api_key].nil? && params[:access_token].nil?
      super
    end

    def api_modules
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

    def base_module
      'Hubspot::Discovery'
    end
  end
end
