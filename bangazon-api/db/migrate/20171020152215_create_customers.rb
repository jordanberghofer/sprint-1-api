class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :stale
      t.date :last_date_active
      t.boolean :active

      t.timestamps
    end
  end
end
