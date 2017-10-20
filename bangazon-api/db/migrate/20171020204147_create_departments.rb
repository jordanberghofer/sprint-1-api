class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.float :expense_budget
      t.string :name

      t.timestamps
    end
  end
end
