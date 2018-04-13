class ShowcasesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @showcase = ShowCase.last
    @artist = Artist.find(@showcase.artist_id)
    @artwork = Artwork.find(@showcase.artwork_id)
    @expo = Expo.find(@showcase.expo_id)
    @galerie = Galerie.find(@showcase.galerie_id)

    set_meta_tags reverse: false,
                  title: "De l'art à l'art de vivre",
                  description: "Galerie d'art Paris 17",
                  keywords: "art, peinture, galerie, Paris 17",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artwork.photo}"
                      }
  end
end
