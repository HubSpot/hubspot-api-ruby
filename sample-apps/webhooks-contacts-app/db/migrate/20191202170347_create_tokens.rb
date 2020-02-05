class CreateTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.string :refresh_token
      t.string :access_token
      t.datetime :expires_in
      t.datetime :expires_at
    end
  end
end
