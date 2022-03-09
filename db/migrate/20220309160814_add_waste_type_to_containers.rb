class AddWasteTypeToContainers < ActiveRecord::Migration[6.1]
  def change
    add_column :containers, :waste_type, :string
  end
end
