class AddBirthActNumberToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :birth_act_number, :string
  end
end
