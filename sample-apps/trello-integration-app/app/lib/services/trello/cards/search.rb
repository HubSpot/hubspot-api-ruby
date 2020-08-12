module Services
  module Trello
    module Cards
      class Search
        def initialize(query:)
          @query = query
        end

        def call
          ::Trello::Action.search(@query, partial: true)['cards']
        end
      end
    end
  end
end