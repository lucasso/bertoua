class CreateStudentHandicaps < ActiveRecord::Migration[5.0]
  def change
    create_table :student_handicaps do |t|
      t.references :student, foreign_key: true
      t.references :handicap, foreign_key: true

      t.timestamps
    end
  end
end
