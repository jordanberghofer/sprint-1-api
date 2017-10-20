class CreateTrainingPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :training_programs do |t|
      t.date :start_date
      t.integer :max_occupancy
      t.date :end_date

      t.timestamps
    end
  end
end
