class CreateEmployeeComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_computers do |t|
      t.references :computer, foreign_key: true
      t.references :employee, foreign_key: true
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
