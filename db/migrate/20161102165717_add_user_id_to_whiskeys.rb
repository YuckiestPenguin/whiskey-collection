class AddUserIdToWhiskeys < ActiveRecord::Migration[5.0]
  def change
    add_column :whiskeys, :user_id, :integer
  end
end
