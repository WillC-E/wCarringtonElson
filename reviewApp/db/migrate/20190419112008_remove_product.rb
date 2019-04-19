class RemoveProduct < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :ProdId
  end
end
