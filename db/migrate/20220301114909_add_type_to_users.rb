class AddTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_reference :users, :city_hall, foreign_key: true
    add_column :users, :employee_id, :string
    add_column :users, :admin, :boolean
  end
end
