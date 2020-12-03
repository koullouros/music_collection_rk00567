class AddIndexToAlbum < ActiveRecord::Migration[5.2]
  def change
    # use titles as index and make sure they are unique
    add_index :albums, :title, unique: true
  end
end
