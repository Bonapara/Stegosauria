class ArtistsController < ApplicationController
  def index         # GET /artists
    @artists = Artist.all
  end

  def show          # GET /artists/:id
    @artist = Artist.find(params[:id])
    @artworks = Artwork.all
  end

  def new           # GET /artists/new
  end

  def create        # POST /artists
  end

  def edit          # GET /artists/:id/edit
  end

  def update        # PATCH /artists/:id
  end

  def destroy       # DELETE /artists/:id
  end

  # Never trust parameters from the scary internet, only allow the white list through
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :bio, :domain)
  end
end
