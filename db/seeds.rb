# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Song.destroy_all
# Genre.destroy_all
# Artist.destroy_all


Song.create(name: "I beleive", genre_id: 1, artist_id: 1)
Song.create(name: "Roses", genre_id: 2, artist_id: 2)
Genre.create(name: "rap")
Genre.create(name: "hip-hop")
Artist.create(name: "Snoop", bio: "awesome")
Artist.create(name: "Cudi", bio: "legend")
