class AddProfile < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reviews, :profiles, foreign_key: true
  end
end
