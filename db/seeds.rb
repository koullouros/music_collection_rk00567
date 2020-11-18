# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.delete_all
Album.create(title: 'Test album 1', artist: 'Test artist 1', released: Date.new(1999,5,1))
Album.create(title: 'Test album 2', artist: 'Test artist 2', released: Date.new(2000,1,11))
Album.create(title: 'Test album 3', artist: 'Test artist 3', released: Date.new(1995,10,1))
Album.create(title: 'Test album 4', artist: 'Test artist 4', released: Date.new(1997,9,1))
