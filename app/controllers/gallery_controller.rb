class GalleryController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gallery = Gallery.last
  end
end
