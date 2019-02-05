# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name: "charles", bio: "cool person")
Artist.create(name: "jess", bio: "also cool")
Artist.create(name: "adam", bio: "semi cool")

Genre.create(name: "Disco")
Genre.create(name: "Funk")
Genre.create(name: "Rap")

Song.create(name: "song", artist_id: 1, genre_id: 2)
Song.create(name: "song2", artist_id: 2, genre_id: 1)
Song.create(name: "song3", artist_id: 1, genre_id: 3)
