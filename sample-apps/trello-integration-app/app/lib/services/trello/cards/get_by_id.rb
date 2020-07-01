module Services
  module Trello
    module Cards
      class GetAll
        def initialize(card_id:)
          @card_id = card_id
        end

        def call
          ::Trello::Card.find(@card_id)
        end
      end
    end
  end
end