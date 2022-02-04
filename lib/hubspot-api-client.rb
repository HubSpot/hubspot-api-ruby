require 'uri'
require 'logger'
require 'require_all'
require_rel 'hubspot/*.rb'
require_rel 'hubspot/helpers'
require_rel 'hubspot/discovery'
require_rel 'hubspot'

module Hubspot
  class << self
    CLIENTS = [
      'Automation::Actions',
      'Cms::AuditLogs',
      'Cms::Blogs::Authors',
      'Cms::Blogs::BlogPosts',
      'Cms::Blogs::Tags',
      'Cms::Domains',
      'Cms::Hubdb',
      'Cms::Performance',
      'Cms::SiteSearch',
      'Cms::UrlRedirects',
      'CommunicationPreferences',
      'Conversations::VisitorIdentification',
      'Crm::Associations',
      'Crm::Companies',
      'Crm::Contacts',
      'Crm::Deals',
      'Crm::Extensions::Accounting',
      'Crm::Extensions::Calling',
      'Crm::Extensions::Cards',
      'Crm::Extensions::Videoconferencing',
      'Crm::Imports',
      'Crm::LineItems',
      'Crm::Objects',
      'Crm::Objects::FeedbackSubmissions',
      'Crm::Owners',
      'Crm::Pipelines',
      'Crm::Products',
      'Crm::Properties',
      'Crm::Quotes',
      'Crm::Schemas',
      'Crm::Tickets',
      'Crm::Timeline',
      'Events',
      'Files::Files',
      'Marketing::Transactional',
      'OAuth',
      'Webhooks',
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
