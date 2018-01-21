class AddMemberIdToRep < ActiveRecord::Migration[5.1]
  def change
    add_column :reps, :member_id, :string
  end
end
