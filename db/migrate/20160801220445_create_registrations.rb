class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :student, foreign_key: true
      t.references :school_year, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
