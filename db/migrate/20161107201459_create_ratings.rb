class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.string :word
      t.text :description

      t.timestamps
    end
  end
end
