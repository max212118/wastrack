class AddNameToCityHalls < ActiveRecord::Migration[6.1]
  def change
    add_column :city_halls, :name, :string
  end
end
