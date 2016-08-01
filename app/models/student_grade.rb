class StudentGrade < ApplicationRecord
  belongs_to :registration
  belongs_to :grade
  belongs_to :subject
end
