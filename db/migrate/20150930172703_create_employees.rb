class CreateEmployees < ActiveRecord::Migrationf
  def change
    create_table :employees do |t|
      t.timestamps null: false
    end
  end
end
