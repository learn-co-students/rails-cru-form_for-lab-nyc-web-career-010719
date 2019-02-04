# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Drake", bio: "Views from the 6")
a2 = Artist.create(name: "Justin Timberlake", bio: "Boy Band to Solo Artist")
a3 = Artist.create(name: "Chris Stapleton", bio: "Country boy")
a4 = Artist.create(name: "Queen", bio: "the best there was")
a5 = Artist.create(name: "Calvin Harris", bio: "best beat maker")

g1 = Genre.create(name: "hip-hop")
g2 = Genre.create(name: "rock")
g3 = Genre.create(name: "pop")
g4 = Genre.create(name: "country")
g5 = Genre.create(name: "techno")

s1 = Song.create(name: "Over", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Suit & Tie", artist_id: a2.id, genre_id: g3.id)
s3 = Song.create(name: "Tennessee Whiskey", artist_id: a3.id, genre_id: g4.id)
s4 = Song.create(name: "Bohemian Rhapsody", artist_id: a4.id, genre_id: g2.id)
s5 = Song.create(name: "Another One Bites the Dust", artist_id: a4.id, genre_id: g3.id)
s6 = Song.create(name: "Electricity", artist_id: a5.id, genre_id: g5.id)
s7 = Song.create(name: "Headlines", artist_id: a1.id, genre_id: g1.id)
s8 = Song.create(name: "Mirrors", artist_id: a1.id, genre_id: g3.id)
