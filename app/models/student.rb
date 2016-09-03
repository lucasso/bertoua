class Student < ApplicationRecord
  belongs_to :confession
  belongs_to :tribe
  has_many :student_handicaps
  has_many :handicaps, :through => :student_handicaps
  accepts_nested_attributes_for :student_handicaps, allow_destroy: true

  enum sex: [ :mâle, :femelle ]

  validates :surname, length: { minimum: 2 }
  validates :forename, length: { minimum: 2 }
  validates :sex, inclusion: { in: sexes.keys }

end
