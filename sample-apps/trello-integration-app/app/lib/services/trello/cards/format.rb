module Services
  module Trello
    module Cards
      class Format
        include Rails.application.routes.url_helpers

        def initialize(deal_associated:, card:, urls:)
          @deal_associated = deal_associated
          @card = card
          @urls = urls
        end

        def call
          if @card.present?
            result = {
              'objectId' => @card.short_id,
              'title' => @card.name,
              'link' => @card.short_url
            }
          end

          response = {
            'results' => result.present? ? [result] : []
          }

          if @deal_associated
            response['primaryAction'] = {
              'type': 'ACTION_HOOK',
              'httpMethod': 'DELETE',
              'associatedObjectProperties': [
                  'hs_object_id',
              ],
              'uri': @urls[:delete_association],
              'label': 'Remove the association'
            }
          else
            response['primaryAction'] = {
              'type': 'IFRAME',
              'width': 650,
              'height': 350,
              'uri': @urls[:search_frame],
              'label': 'Associate Trello card',
              'associatedObjectProperties': [
                  'hs_object_id', 'dealname',
              ],
            }
          end

          response
        end
      end
    end
  end
end