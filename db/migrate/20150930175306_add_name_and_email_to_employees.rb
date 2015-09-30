class AddNameAndEmailToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :email, :string
  end
end
