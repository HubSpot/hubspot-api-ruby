module Services
  module Trello
    module Boards
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          ::Trello::Board.find(@id)
        end
      end
    end
  end
end