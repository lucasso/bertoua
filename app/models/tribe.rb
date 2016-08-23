class Tribe < ApplicationRecord
  validates :name, length: { minimum: 2, maximum: 50 }
end
