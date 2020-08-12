class CreateExtensionCards < ActiveRecord::Migration[5.2]
  def change
    create_table :extension_cards do |t|
      t.string :card_id_key
      t.string :card_id
    end
  end
end
