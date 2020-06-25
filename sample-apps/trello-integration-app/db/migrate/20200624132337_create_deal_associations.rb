class CreateDealAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :deal_associtaions do |t|
      t.string :association_id
    end
  end
end
