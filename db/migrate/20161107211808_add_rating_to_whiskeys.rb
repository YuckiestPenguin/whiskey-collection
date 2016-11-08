class AddRatingToWhiskeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :whiskeys, :rating, foreign_key: true
  end
end
