class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :ratings, :score, :ratingscore
  end
end
