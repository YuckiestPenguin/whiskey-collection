class AddOwnToWhiskeys < ActiveRecord::Migration[5.0]
  def change
    add_column :whiskeys, :own, :boolean
  end
end
