class ShowcasesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if ShowCase.count > 0
      @showcase = ShowCase.last
      @artist = Artist.find(@showcase.artist_id)
      @artwork = Artwork.find(@showcase.artwork_id)
      # @gallery = Gallery.find(@showcase.gallery_id)
    else
      @photo_artist = 'http://placehold.it/1200X500'
      @photo_artwork = 'http://placehold.it/1200X500'
      # @photo_gallery = 'http://placehold.it/1200X500'
    end
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
