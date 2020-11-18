class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.belongs_to :album, foreign_key: true, null: false
      t.string :title, null: false
      t.string :artist, null: false
      t.date :released, null: false
      t.integer :minutes, null: false
      t.integer :seconds, null: false

      t.timestamps
    end
  end
end
