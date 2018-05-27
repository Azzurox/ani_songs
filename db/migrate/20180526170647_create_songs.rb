class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :anime
      t.integer :nbre_vote

      t.timestamps
    end
  end
end