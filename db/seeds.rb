# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
genre_arr = ["Rap", "R&B", "Punk", "Alternative", "Indie", "Pop", "Electronic"]

10.times do
  artist = Artist.create(name: (Faker::Name.name), bio: (Faker::Lorem.sentences(2)))
end
10.times do
  genre = Genre.create(name: (genre_arr.sample))
end
10.times do
  song = Song.create(name: (Faker::Book.title), artist_id: rand(1..9), genre_id: rand(1..6))
end 
