class Handicap < ApplicationRecord
  validates :name, length: { minimum: 2, maximum: 50 }
end
