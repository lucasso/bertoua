class Registration < ApplicationRecord
  belongs_to :student
  belongs_to :school_year
  belongs_to :group
end
