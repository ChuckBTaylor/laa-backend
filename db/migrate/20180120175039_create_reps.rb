class CreateReps < ActiveRecord::Migration[5.1]
  def change
    create_table :reps do |t|
      t.string :name
      t.belongs_to :district, foreign_key: true

      t.timestamps
    end
  end
end
