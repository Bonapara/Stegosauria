puts '------------------------'
puts 'WELCOME TO THE SEED 2.O '
puts '🤘 🤘 🤘 🤘 🤘 🤘 🤘 🤘 🤘 🤘 🤘 🤘'
puts '------------------------'

puts '-------------------'
puts 'Cleaning database...'
puts '-------------------'
Artwork.destroy_all
puts "Artworks destroyed"
Artist.destroy_all
puts "Artists destroyed"

puts '-------------------------'
puts '‍🎨   Creating artists...'
puts '-------------------------'

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
    puts "creating #{item.values[1]} ..."
    data << object
    end
  end
  Artist.create!(data)
end

puts '-------------------'
puts "#{Artist.count} artists created"
puts '-------------------'

puts '--------------------------'
puts '🖼   Creating Artworks...'
puts '--------------------------'
filepath = "https://raw.githubusercontent.com/Bonapara/seeds/master/oeuvres"

open(filepath) do |oeuvres|
  data = []
  oeuvres.read.each_line do |oeuvre|
    @items = JSON.parse(oeuvre)
    @items.each do |item|
      object = {
        name:  item.values[1],
        dimensions:   item.values[2],
        artwork_domain:   item.values[3],
        description:      item.values[4],
        remote_photo_url: item.values[5]["url"],
        artist_id:        Artist.all.shuffle[0].id
      }
    puts "creating #{item.values[1]} ..."
    data << object
    end
  end
  Artwork.create!(data)
end

puts '-------------------'
puts "#{Artwork.count} artworks created"
puts '-------------------'

puts '------------------------'
puts '⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️ ⛄️'
puts 'DATABASE HAS BEEN SEEDED '
puts '🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥'
puts '------------------------'


