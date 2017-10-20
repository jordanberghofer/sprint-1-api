class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.integer :credit_card_number
      t.string :payment_type_name
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
