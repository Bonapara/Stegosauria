class HomepController < ApplicationController
  def index
    if HomeP.count > 0
      # PHOTO N°1 Carousel
      @photo_slide1 = HomeP.last.photo_slide1
      # PHOTO N°2 Carousel
      @photo_slide2 = HomeP.last.photo_slide2
      # PHOTO N°3 Carousel
      @photo_slide3 = HomeP.last.photo_slide3
    else
      @photo_slide1 = 'http://placehold.it/1200X500'
      @photo_slide2 = 'http://placehold.it/1200X500'
      @photo_slide3 = 'http://placehold.it/1200X500'
    end
  end
end
