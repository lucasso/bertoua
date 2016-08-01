class AddRegistrationRefToStudentGrades < ActiveRecord::Migration[5.0]
  def change
    add_reference :student_grades, :registration, foreign_key: true
  end
end
