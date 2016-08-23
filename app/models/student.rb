class Student < ApplicationRecord
  belongs_to :confession
  belongs_to :tribe
  enum sex: [ :male, :female ]

  validates :surname, length: { minimum: 2 }
  validates :forename, length: { minimum: 2 }
  validates :sex, inclusion: { in: sexes.keys }

end
