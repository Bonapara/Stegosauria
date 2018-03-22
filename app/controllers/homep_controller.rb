class HomepController < ApplicationController
  def index
    # PHOTO N°1 Carousel
    @photo_slide1 = HomeP.last.photo_slide1
    # PHOTO N°2 Carousel
    @photo_slide2 = HomeP.last.photo_slide2
    # PHOTO N°3 Carousel
    @photo_slide3 = HomeP.last.photo_slide3
  end
end
