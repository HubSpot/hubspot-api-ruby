module Services
  module Trello
    module Webhooks
      class Create
        def initialize(callback_url:, id_model:)
          @callback_url = callback_url
          @id_model = id_model
        end

        def call
          response = ::HTTParty.post(
            "https://api.trello.com/1/tokens/"\
            "#{TrelloToken.instance.token}/webhooks/?key="\
            "#{ENV["TRELLO_KEY"]}",
            query: {
              description: "test",
              callbackURL: @callback_url,
              idModel: @id_model
            },
            headers: { "Content-Type" => "application/x-www-form-urlencoded" }
          )

          parsed_body = JSON.parse(response.body)
          return false if parsed_body['id'].nil?

          JSON.parse(response.body)
        end
      end
    end
  end
end