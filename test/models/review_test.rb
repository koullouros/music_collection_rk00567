require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  setup do
    @track = tracks(:one)
  end

  test 'should not save empty review' do
    review = Review.new
    review.save
    refute review.valid?
  end

  test 'should save valid review' do
    review = Review.new
    review.name = "Test"
    review.description = "Test"
    review.rating = 3
    review.track = @track
    review.save

    assert review.valid?
  end

  test 'should not save invalid rating less than 1' do
    review = Review.new
    review.name = "Test"
    review.description = "Test"
    review.rating = 0
    review.save
    refute review.valid?
  end

  test 'should not save invalid rating more than 5' do
    review = Review.new
    review.name = "Test"
    review.description = "Test"
    review.rating = 6
    review.save
    refute review.valid?
  end

end
