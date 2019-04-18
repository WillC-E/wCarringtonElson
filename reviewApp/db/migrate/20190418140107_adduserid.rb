class Adduserid < ActiveRecord::Migration[5.2]
  def change
  	add_reference :profiles, :users, forgeign_key: true
  end
end
