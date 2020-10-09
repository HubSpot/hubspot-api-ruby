module Services
  module Hubspot
    module Timeline
      class CreateEvent
        def initialize(email, template_id)
          @email = email
          @template_id = template_id
        end

        def call
          timeline_event = ::Hubspot::Crm::Timeline::TimelineEvent.new(
            email: @email,
            event_template_id: @template_id
          )
          ::Hubspot::Crm::Timeline::EventsApi.new.create(timeline_event: timeline_event)
        end
      end
    end
  end
end
