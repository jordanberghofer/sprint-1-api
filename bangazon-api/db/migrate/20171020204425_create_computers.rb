class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.date :decommission_date
      t.date :purchase_date

      t.timestamps
    end
  end
end
