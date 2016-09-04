class Adult < ApplicationRecord
  has_many :mother_childs, class_name: "Student", foreign_key: "mother_id", :dependent => :restrict_with_error
  has_many :father_childs, class_name: "Student", foreign_key: "father_id", :dependent => :restrict_with_error
  has_many :guardian_childs, class_name: "Student", foreign_key: "guardian_id", :dependent => :restrict_with_error
  validates :forename, length: { minimum: 2, maximum: 50 }
  validates :surname, length: { minimum: 2, maximum: 50 }
  enum sex: [ :mâle, :femelle ]
  validates :sex, inclusion: { in: sexes.keys }

  def short_presentation
    surname + ", " + forename + " de " + address
  end

  def title
    {nil => "", "mâle" => "M.", "femelle" => "Mme"}[sex]
  end

  def official_presentation
     title + " " + forename + " " + surname
  end


end
