class CreateMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :mappings do |t|
      t.string :board_id
      t.string :board_list_id
      t.string :pipeline_id
      t.string :pipeline_stage_id

      t.timestamps
    end
  end
end
