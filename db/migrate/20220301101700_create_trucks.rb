class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.integer :kilometers
      t.float :consumption
      t.string :plate_number
      t.references :city_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
