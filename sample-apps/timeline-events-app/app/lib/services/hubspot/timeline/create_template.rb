module Services
  module Hubspot
    module Timeline
      class CreateTemplate
        def initialize(template_params)
          @template_params = template_params
        end

        def call
          api_client = api_client_with_hapikey
          create_api = ::Hubspot::Crm::Timeline::TemplatesApi.new(api_client)
          create_api.create(
            ENV['HUBSPOT_APPLICATION_ID'],
            timeline_event_template_create_request: template_create_request,
            auth_names: 'hapikey'
          )
        end

        private

        def template_create_request
          ::Hubspot::Crm::Timeline::TimelineEventTemplateCreateRequest.new(
            object_type: @template_params[:target_record_type],
            name: 'Test event template name',
            header_template: @template_params[:header_template],
            detail_template: @template_params[:detail_template]
          )
        end

        def api_client_with_hapikey
          config = ::Hubspot::Crm::Timeline::Configuration.new do |config|
            config.api_key = { 'hapikey' => ENV['HUBSPOT_DEVELOPER_API_KEY'] }
          end
          ::Hubspot::Crm::Timeline::ApiClient.new(config)
        end
      end
    end
  end
end
