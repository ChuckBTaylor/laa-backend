class CreateApiV1Districts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.string :number
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end
