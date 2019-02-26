# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.destroy_all
Artist.destroy_all
Song.destroy_all


puts "making seed data"
Genre.create(name: "Contemporary")
Genre.create(name: "Hip hop")
Genre.create(name: "Test")

Artist.create(name: "Leonardo", bio: "modern day Metallica")
Artist.create(name: "Rob", bio: "blues")
Artist.create(name: "Jess", bio: "rockstar")

Song.create(name: "Ign is Bliss", artist_id: "4", genre_id: "4")
Song.create(name: "Coding 24/7", artist_id: "5", genre_id: "5")
Song.create(name: "Blah", artist_id: "6", genre_id: "6")



puts "made seed data"
