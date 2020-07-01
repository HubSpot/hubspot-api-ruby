class CreateDealAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_associations do |t|
      t.string :deal_id
      t.string :card_id
    end
  end
end
