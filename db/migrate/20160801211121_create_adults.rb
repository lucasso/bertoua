class CreateAdults < ActiveRecord::Migration[5.0]
  def change
    create_table :adults do |t|
      t.string :forename
      t.string :surname
      t.string :occupation
      t.string :address
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
