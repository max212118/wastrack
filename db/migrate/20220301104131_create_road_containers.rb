class CreateRoadContainers < ActiveRecord::Migration[6.1]
  def change
    create_table :road_containers do |t|
      t.boolean :collected
      t.references :container, null: false, foreign_key: true
      t.references :road, null: false, foreign_key: true

      t.timestamps
    end
  end
end
