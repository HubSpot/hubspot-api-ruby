require_rel 'discovery'

module Hubspot
  class Client
    attr_reader :api_key, :access_token

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

    def configure_api_key
      Hubspot.configure do |config|
        config.api_key['hapikey'] = api_key
      end
    end

    def configure_access_token
      Hubspot.configure do |config|
        config.access_token = access_token
      end
    end

    def initialize(params)
      raise 'Please, pass :api_key or :access_token' if params[:api_key].nil? && params[:developer_api_key].nil? && params[:access_token].nil?
      @api_key = params[:api_key] || params[:developer_api_key]
      @access_token = params[:access_token]
      @params = params
      configure_api_key if @api_key
      configure_access_token if @access_token
    end
  end
end
