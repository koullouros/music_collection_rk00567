# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.delete_all
Track.delete_all
Album.delete_all
a1 = Album.create(title: 'Test album 1', artist: 'Test artist 1', released: Date.new(1999,5,1))
a2 = Album.create(title: 'Test album 2', artist: 'Test artist 2', released: Date.new(2000,1,11))

t1 = Track.create(title: 'Test track 1', artist: 'Test artist 1', released: Date.new(1994,2,5), minutes: 1, seconds: 5, album: a1)
t2 = Track.create(title: 'Test track 2', artist: 'Test artist 1', released: Date.new(1994,2,5), minutes: 2, seconds: 5, album: a1)
t3 = Track.create(title: 'Test track 3', artist: 'Test artist 1', released: Date.new(2005,1,5), minutes: 5, seconds: 30, album: a1)

t4 = Track.create(title: 'Test track 1', artist: 'Test artist 2', released: Date.new(1994,2,5), minutes: 1, seconds: 5, album: a2)
t5 = Track.create(title: 'Test track 2', artist: 'Test artist 2', released: Date.new(1994,2,5), minutes: 2, seconds: 5, album: a2)
t6 = Track.create(title: 'Test track 3', artist: 'Test artist 2 and Test artist 3', released: Date.new(2005,1,5), minutes: 2, seconds: 30, album: a2)


r1 = Review.create(name: 'reviewer 1', rating: 3, description: 'ok, i like the drop', track: t1)
r2 = Review.create(name: 'reviewer 2', rating: 1, description: 'I dont like it', track: t1)
