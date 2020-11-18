class Album < ApplicationRecord
  validates :title, :artist, :released, presence: true
  validates :title, uniqueness: true
end
