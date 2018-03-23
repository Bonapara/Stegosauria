class GalleryController < ApplicationController
  def index
    @gallery = Gallery.last
  end
end
