class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :forename
      t.string :surname
      t.integer :sex
      t.date :birth_date
      t.string :birth_place
      t.references :confession, foreign_key: true
      t.references :tribe, foreign_key: true
      t.integer :father_id
      t.integer :mother_id
      t.integer :guardian_id
      t.string :address
      t.datetime :archived_at
      t.string :archiving_reason

      t.timestamps
    end
  end
end
