class ChangeEmployeeType < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :type, :employee_category
  end
end
