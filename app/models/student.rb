class Student < ApplicationRecord
  belongs_to :confession
  belongs_to :tribe
  belongs_to :mother, class_name: "Adult", foreign_key: "mother_id", optional: true
  belongs_to :father, class_name: "Adult", foreign_key: "father_id", optional: true
  belongs_to :guardian, class_name: "Adult", foreign_key: "guardian_id", optional: true
  has_many :student_handicaps
  has_many :handicaps, :through => :student_handicaps
  accepts_nested_attributes_for :student_handicaps, allow_destroy: true

  enum sex: [ :mâle, :femelle ]

  validates :surname, length: { minimum: 2 }
  validates :forename, length: { minimum: 2 }
  validates :sex, inclusion: { in: sexes.keys }


end
