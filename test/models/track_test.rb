require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  setup do
    @album = albums(:one)
  end

  test 'should not save empty track' do
    track = Track.new

    track.save
    refute track.valid?
  end

  test 'should save valid track' do
    track = Track.new

    track.album = @album
    track.title = "test track"
    track.artist = "test artist"
    track.released = Time.now
    track.minutes = 3
    track.seconds = 24

    assert track.valid?
  end

  test 'should not save tracks with minutes less than 1' do
    track = Track.new

    track.album = @album
    track.title = "test track"
    track.artist = "test artist"
    track.released = Time.now
    track.minutes = 0
    track.seconds = 24

    refute track.valid?
  end

  test 'should not save tracks with seconds more than 59' do
    track = Track.new

    track.album = @album
    track.title = "test track"
    track.artist = "test artist"
    track.released = Time.now
    track.minutes = 0
    track.seconds = 60

    refute track.valid?
  end

  test 'should not save tracks with seconds less than 0' do
    track = Track.new

    track.album = @album
    track.title = "test track"
    track.artist = "test artist"
    track.released = Time.now
    track.minutes = 0
    track.seconds = -1

    refute track.valid?
  end


end
