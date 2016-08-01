class StudentHandicap < ApplicationRecord
  belongs_to :student
  belongs_to :handicap
end
