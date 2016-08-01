class CreateStudentGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :student_grades do |t|
      t.references :student, foreign_key: true
      t.references :grade, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
