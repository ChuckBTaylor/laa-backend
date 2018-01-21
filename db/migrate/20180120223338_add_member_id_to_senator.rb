class AddMemberIdToSenator < ActiveRecord::Migration[5.1]
  def change
    add_column :senators, :member_id, :string
  end
end
