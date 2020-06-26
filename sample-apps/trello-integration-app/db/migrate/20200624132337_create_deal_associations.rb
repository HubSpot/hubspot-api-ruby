class CreateDealAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_associtaions do |t|
      t.string :deal_id
    end
  end
end
