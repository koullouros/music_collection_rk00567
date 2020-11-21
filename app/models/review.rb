class Review < ApplicationRecord
  belongs_to :track
  validates :name, :rating, :description, presence: true
  validates :rating, :numericality => {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}

end
