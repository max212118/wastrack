class CreateRoads < ActiveRecord::Migration[6.1]
  def change
    create_table :roads do |t|
      t.datetime :date
      t.integer :kilometers
      t.references :user, null: false, foreign_key: true
      t.references :truck, null: false, foreign_key: true


      t.timestamps
    end
  end
end
