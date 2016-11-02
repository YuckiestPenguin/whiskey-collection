class CreateWhiskeys < ActiveRecord::Migration[5.0]
  def change
    create_table :whiskeys do |t|
      t.string :title
      t.decimal :abv
      t.decimal :price
      t.text :color
      t.text :nose
      t.text :taste
      t.text :finish
      t.text :overall
      t.integer :score

      t.timestamps
    end
  end
end
