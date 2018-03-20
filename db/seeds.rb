# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Artist.destroy_all
Artwork.destroy_all
#User.destroy_all
puts 'Creating artists...'

# Artist 1
artist1 = Artist.new( {
    first_name:  "CATHERINE",
    last_name:   "DE KERHOR",
    biography: "Les traces que je laisse dans la terre évoquent les mouvements de la vie. Ce style de modelé, mis en valeur par la patine, me permet aussi de jouer avec l’ombre et la lumière dans une correspondance incessante. Mes sculptures, bien que figées dans l’éternité, continuent ainsi à vivre dans le temps",
    domain: "sculpture",
    photo: "images/photo_artist1.jpeg"
  } )
artist1.save!

# Artist 2
artist2 = Artist.new( {
    first_name:  "FRANÇOISE",
    last_name:   "REVOL-O'QUIN",
    biography: "Enfant au Moyen-Orient, adolescente en Extrême-Orient, puis adulte en Afrique, Françoise Revol-O’Quin (FRQ) a ainsi savouré, dès son plus jeune âge, les charmes de l’évasion.
En 2006, après plus de 15 ans de journalisme dans la presse écrite, profondément marquée par ces découvertes des richesses du monde , FRQ ressent le besoin d’exprimer, grâce à la sculpture, cette force reçue de l’évasion, qu’elle appelle « Force de Vie ».
FRQ s'inspire de la richesse culturelle et de la diversité des civilisations. Sa liberté d'expression s'exprime dans le travail de la terre. Sa culture voyage ressort constament de ses scultures qui nous invitent à faire nos valises !
Les sculptures de Françoise, en terre patinée, en résine, en cire perdue ou en bois, sont donc des scènes liées à la vie quotidienne.",
    domain: "Sculpture",
    photo: "images/photo_artist1.jpeg"
  } )
artist2.save!

# Artist 3
artist3 = Artist.new( {
  first_name: "CHRISTINE",
  last_name: "MILLER",
  biography: "Diplomée d’une maitrise d’histoire de l’art et de l’École du Louvre, Christine Miller a d’abord évolué à Cotonou, Nouméa, embrassant une carrière de journaliste télé qui dure près de 17 ans. L'art s'impose à Christine par cette nécessité vitale de création qui la pousse à se dédier entièrement à la sculpture dès 1999.",
  domain: "Sculpture",
  photo: "images/photo_artist1.jpeg"
  })
artist3.save!

puts 'artists created'

puts 'Creating artworks...'
# Artwork 1
artwork1 = Artwork.new( {
  name: "3 PLONGEUSES",
  dimensions: "32x59x8cm",
  artwork_domain: "sculpture",
  description: "Ce bronze est une sculpture d'art contemporain.",
  photo: "images/photo_artist1.jpeg",
  artist_id: artist3.id
  })
artwork1.save!

artwork2 = Artwork.new( {
  name: "PERCHÉE",
  dimensions: "hauteur: 30 cm",
  artwork_domain: "sculpture",
  description: "Sculpture Perchée - Bronze numéroté 7/8",
  photo: "images/photo_artist1.jpeg",
  artist_id: artist2.id
  })
puts 'artworks created'

artwork2.save!


