class CreateHubspotTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :hubspot_tokens do |t|
      t.string :refresh_token
      t.string :access_token
      t.datetime :expires_in
      t.datetime :expires_at
    end
  end
end
