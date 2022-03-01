class CreateCityHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :city_halls do |t|

      t.timestamps
    end
  end
end
