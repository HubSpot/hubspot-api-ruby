class CreateTrelloTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :trello_tokens do |t|
      t.string :token
      t.string :secret
    end
  end
end
