class AddCoordinatesToContainers < ActiveRecord::Migration[6.1]
  def change
    add_column :containers, :latitude, :float
    add_column :containers, :longitude, :float
  end
end
