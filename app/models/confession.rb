class Confession < ApplicationRecord
  validates :name, length: { minimum: 2, maximum: 50 }
  has_many :students, :dependent => :restrict_with_error
end
