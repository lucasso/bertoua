class AddMomDadAndGuardForeignKeysToStudents < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :students, :adults, column: :mother_id
    add_foreign_key :students, :adults, column: :father_id
    add_foreign_key :students, :adults, column: :guardian_id
  end
end
