class AddIndexToSongsName < ActiveRecord::Migration[5.1]
  def change
	    add_index :songs, :name, unique: true
  end
end
