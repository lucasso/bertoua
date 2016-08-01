class RemoveStudentRefFromStudentGrades < ActiveRecord::Migration[5.0]
  def change
    remove_reference :student_grades, :student, foreign_key: true
  end
end
