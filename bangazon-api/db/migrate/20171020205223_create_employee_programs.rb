class CreateEmployeePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_programs do |t|
      t.references :employee, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
