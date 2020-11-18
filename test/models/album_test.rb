require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test 'should not save empty album' do
    album = Album.new
    album.save
    refute album.valid?
  end

  test 'should save valid album' do
    album = Album.new

    album.title = 'An album'
    album.artist = 'An artist'
    album.released = Date.new(1999,2,2)

    album.save
    assert album.valid?
  end

  test 'should not save duplicate album title' do
    album1 = Album.new
    album1.title = 'An album'
    album1.artist = 'An artist'
    album1.released = Date.new(1999,2,2)
    album1.save
    assert album1.valid?

    album2 = Album.new
    album2.title = 'An album'
    album2.artist = 'An artist'
    album2.released = Date.new(1999,2,2)
    album2.save
    refute album2.valid?
  end
end
