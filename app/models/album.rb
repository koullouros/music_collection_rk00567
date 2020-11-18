class Album < ApplicationRecord
  has_many :tracks, dependent: :destroy
  validates :title, :artist, :released, presence: true
  validates :title, uniqueness: true
end
