class ArtworksController < ApplicationController
  def index         # GET /artworks
    @artworks = Artwork.all
  end

  def show          # GET /artworks/:id
    @artwork = Artwork.find(params[:id])
  end

  def new           # GET /artworks/new
  end

  def create        # POST /artworks
  end

  def edit          # GET /artworks/:id/edit
  end

  def update        # PATCH /artworks/:id
  end

  def destroy       # DELETE /artworks/:id
  end

  # Never trust parameters from the scary internet, only allow the white list through
  def artworks_params
    params.require(:artwork).permit(:name, :dimensions, :type, :description, :photo)
  end
end
