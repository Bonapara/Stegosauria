class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gallery = Galerie.last
    @page_title = "La galerie, contact, adresse"
  end
end
