# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts 'Cleaning database...'
Artist.destroy_all
# Artwork.destroy_all
# User.destroy_all
puts 'Creating artists...'

filepath = "https://raw.githubusercontent.com/Bonapara/seeds/master/artist.json"

open(filepath) do |artists|
  data = []
  artists.read.each_line do |artist|
    @items = JSON.parse(artist)
    @items.each do |item|
      object = {
        first_name:  item.values[1],
        last_name:   item.values[2],
        biography:   item.values[3],
        domain:      item.values[4],
        remote_photo_url: item.values[5]["url"]
      }
    data << object
    end
  end
  Artist.create!(data)
end

puts 'artists created'

# puts 'Creating artworks...'
# # Artwork 1
# artwork1 = Artwork.new( {
#   name: "3 PLONGEUSES",
#   dimensions: "32x59x8cm",
#   artwork_domain: "sculpture",
#   description: "Ce bronze est une sculpture d'art contemporain.",
#   photo: "images/photo_artist1.jpeg",
#   artist_id: artist3.id
#   })
# artwork1.save!

# artwork2 = Artwork.new( {
#   name: "PERCHÉE",
#   dimensions: "hauteur: 30 cm",
#   artwork_domain: "sculpture",
#   description: "Sculpture Perchée - Bronze numéroté 7/8",
#   photo: "images/photo_artist1.jpeg",
#   artist_id: artist2.id
#   })
# puts 'artworks created'

# artwork2.save!


