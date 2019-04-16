class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :brand
      t.integer :avgCost
      t.string :category
      t.date :releaseDate
      t.string :description
      t.attachment :prodPhoto

      t.timestamps
    end
  end
end
