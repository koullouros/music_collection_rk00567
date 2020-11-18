class Track < ApplicationRecord
  belongs_to :album
  validates :title, :album, :minutes, :seconds, :artist, :released, presence: true
  validates :minutes, :numericality => {greater_than_or_equal_to: 1}
  validates :seconds, :numericality => {less_than_or_equal_to: 59, greater_than_or_equal_to: 0}
end
