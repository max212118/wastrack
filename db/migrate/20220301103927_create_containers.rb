class CreateContainers < ActiveRecord::Migration[6.1]
  def change
    create_table :containers do |t|
      t.integer :temperature
      t.integer :filling_level
      t.string :location
      t.boolean :broken
      t.references :city_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
