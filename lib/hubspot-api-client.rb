require 'uri'
require 'logger'
require 'require_all'
require_rel 'hubspot/*.rb'
require_rel 'hubspot/helpers'
require_rel 'hubspot'

module Hubspot
  class << self
    CLIENTS = [
      'OAuth',
      'Webhooks',
      'Cms::AuditLogs',
      'Cms::Domains',
      'Cms::Hubdb',
      'Cms::Performance',
      'Cms::SiteSearch',
      'Cms::UrlRedirects',
      'Crm::Associations',
      'Crm::Companies',
      'Crm::Contacts',
      'Crm::Deals',
      'Crm::Extensions::Cards',
      'Crm::Imports',
      'Crm::LineItems',
      'Crm::Objects',
      'Crm::Owners',
      'Crm::Pipelines',
      'Crm::Products',
      'Crm::Properties',
      'Crm::Quotes',
      'Crm::Schemas',
      'Crm::Tickets',
      'Crm::Timeline'
    ].freeze

    def configure
      return Configuration.default unless block_given?
      yield(Configuration.default)
      CLIENTS.each do |client_class_name|
        config_class = Hubspot.const_get("#{client_class_name}::Configuration")
        yield(config_class.default)
      end
      Configuration.default
    end
  end
end
