module FormHelper
  def setup_student(student)
    (Handicap.all - student.handicaps).each do |hdc|
      student.student_handicaps.build(:handicap => hdc)
    end
    #student.student_handicaps.sort_by! {|x| x.handicap.name }
    student
  end
end