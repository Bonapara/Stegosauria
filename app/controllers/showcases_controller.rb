class ShowcasesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @showcase = ShowCase.last
    @artist = Artist.find(@showcase.artist_id)
    @artwork = Artwork.find(@showcase.artwork_id)
    @expo = Expo.find(@showcase.expo_id)
    @actu = Actu.find(@showcase.actu_id)
    @galerie = Galerie.find(@showcase.galerie_id)

    set_meta_tags reverse: false,
                  title: "De l'art à l'art de vivre",
                  description: "La galerie Isabelle Laverny est une galerie d'art et d'art de vivre située dans le 17 arrondissement proposant les œuvres d'artistes contemporain français et internationaux.",
                  keywords: "art, peinture, Galerie d'art, Paris 17, Galerie Isabelle Laverny, Maison sur pilotis, Paris 17 art, Paris art de vivre, Galerie d'art 17e, Exposition 17e, idée cadeaux oeuvre d'art, Galerie Ternes, Galerie porte maillot, Galerie Pereire, idées cadeaux art, Art contemporain paris 17e, Objets déco Paris",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artwork.photo}"
                      }
  end
end
