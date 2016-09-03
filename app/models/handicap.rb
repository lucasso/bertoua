class Handicap < ApplicationRecord
  has_many :student_handicaps, :dependent => :restrict_with_error
  validates :name, length: { minimum: 2, maximum: 50 }
end
