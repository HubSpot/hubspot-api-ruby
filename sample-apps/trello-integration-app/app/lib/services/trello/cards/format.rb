module Services
  module Trello
    module Cards
      class Format
        include Rails.application.routes.url_helpers

        def initialize(deal_associated:, card:, request:)
          @deal_associated = deal_associated
          @card = card
          @request = request
        end

        def call
          response = {}
          if @card.present?
            response[:results] = [card_info]
          end

          if @deal_associated
            response['primaryAction'] = {
              'type': 'ACTION_HOOK',
              'httpMethod': 'DELETE',
              'associatedObjectProperties': [
                  'hs_object_id',
              ],
              'uri': url_for(
                controller: 'trello/cards',
                action: :delete_association,
                only_path: false,
                protocol: 'https',
                host: @request.host
              ),
              'label': 'Remove the association'
            }
          else
            response['primaryAction'] = {
              'type': 'IFRAME',
              'width': 650,
              'height': 350,
              'uri': url_for(
                controller: 'trello/cards',
                action: :search_frame,
                only_path: false,
                protocol: 'https',
                host: @request.host
              ),
              'label': 'Associate Trello card',
              'associatedObjectProperties': [
                  'hs_object_id', 'dealname',
              ],
            }
          end

          response
        end

        private

        def card_info
          result = {
            objectId: @card.short_id,
            title: @card.name,
            link: @card.short_url
          }
          members = @card.members
          result[:properties] = [
            {
              label: 'Members',
              dataType: 'STRING',
              value: members.map { |m| m.username }.join(', ')
            }
          ] if members.present?
          result
        end
      end
    end
  end
end