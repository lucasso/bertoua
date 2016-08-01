class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :student, foreign_key: true
      t.integer :total_amount
      t.integer :paid
      t.date :deadline
      t.string :description

      t.timestamps
    end
  end
end
