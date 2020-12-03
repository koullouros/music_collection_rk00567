class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :description
      t.integer :rating
      # a review belongs to a track
      t.belongs_to :track, foreign_key: true, null: false

      t.timestamps
    end
  end
end
