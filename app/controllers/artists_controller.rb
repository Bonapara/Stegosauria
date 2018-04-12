class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!
  def index         # GET /artists
    # @artists = Artist.all
    @artists = Artist.page(1)
    # @artists = Artist.all.page params[:page]
    set_meta_tags title: "Nos artistes",
                  description: "Découvrez les artistes de la Galerie Isabelle Laverny",
                  keywords: "art, peinture, galerie, Paris 17",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artists.first.photo}"
                      }

  end

  def show          # GET /artists/:id
    @artist = Artist.find(params[:id])
    @artworks = Artwork.all
    set_meta_tags title: "#{@artist.first_name} #{@artist.last_name} - #{@artist.speciality1} #{@artist.speciality2} #{@artist.speciality3}",
                  description: "#{@artist.first_name} #{@artist.last_name}, #{@artist.biography} #{@artist.speciality1} #{@artist.speciality2} #{@artist.speciality3}",
                  keywords: "art, peinture, galerie, Paris 17",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artist.photo}"
                      }
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
