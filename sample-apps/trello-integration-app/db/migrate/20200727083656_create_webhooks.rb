class CreateWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhooks do |t|
      t.string :webhook_id
      t.string :card_id
      t.string :url
    end
  end
end
