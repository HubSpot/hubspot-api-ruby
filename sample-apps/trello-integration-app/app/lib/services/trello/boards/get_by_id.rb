module Services
  module Trello
    module Boards
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          begin
            ::Trello::Board.find(@id)
          rescue
            nil
          end
        end
      end
    end
  end
end