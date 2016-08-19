class Student < ApplicationRecord
  belongs_to :confession
  belongs_to :tribe
  enum sex: [ :male, :female ]
end
