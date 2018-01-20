class CreateSenators < ActiveRecord::Migration[5.1]
  def change
    create_table :senators do |t|
      t.belongs_to :state, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
