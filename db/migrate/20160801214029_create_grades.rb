class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :short_name
      t.string :name
      t.float :weight

      t.timestamps
    end
  end
end
