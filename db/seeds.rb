# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist_1 = Artist.new(name:"John",bio:"")
genre_1 = Genre.new(name:"Blue")
song_1 = Song.new(artist:artist_1, genre:genre_1)