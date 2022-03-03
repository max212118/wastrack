class CreateContainerFillingLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :container_filling_levels do |t|
      t.references :container, null: false, foreign_key: true
      t.integer :level
      t.datetime :at

      t.timestamps
    end
  end
end
