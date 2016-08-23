class Adult < ApplicationRecord
  validates :forename, length: { minimum: 2, maximum: 50 }
  validates :surname, length: { minimum: 2, maximum: 50 }
end
