class CreateHandicaps < ActiveRecord::Migration[5.0]
  def change
    create_table :handicaps do |t|
      t.string :name

      t.timestamps
    end
  end
end
