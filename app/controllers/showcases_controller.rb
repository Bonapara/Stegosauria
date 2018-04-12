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
    @page_title = "De l'art à l'art de vivre"
  end
end
