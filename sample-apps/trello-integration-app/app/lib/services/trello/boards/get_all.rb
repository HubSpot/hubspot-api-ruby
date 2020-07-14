module Services
  module Trello
    module Boards
      class GetAll
        def call
          ::Trello::Member.find('me').boards
        end
      end
    end
  end
end