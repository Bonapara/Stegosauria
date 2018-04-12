class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!
  def index         # GET /artists
    # @artists = Artist.all
    @artists = Artist.all
    @page_title = "Nos artistes"
  end

  def show          # GET /artists/:id
    @artist = Artist.find(params[:id])
    @artworks = Artwork.all
    @page_title = "#{@artist.first_name} #{@artist.last_name} - #{@artist.speciality1} #{@artist.speciality2} #{@artist.speciality3}"
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
