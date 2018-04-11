class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    raise
    I18n.locale = :fr
     # GET /artworks
    if params[:commit]
      domain = params[:commit].downcase
      @artworks = Artwork.where(artwork_domain: domain).order('priority ASC').all.page params[:page]
    else
      @artworks = Artwork.order('priority ASC').all.order(:name).page params[:page]
    end
  end

  def show          # GET /artworks/:id
    @artwork = Artwork.find(params[:id])
    @artist = @artwork.artist
    # Same artist artworks without the displaying one
    @all_artworks = Artwork.all.select { |artwork| artwork.artist == @artwork.artist }
    @artworks = []
    @all_artworks.each do |artwork|
      @artworks << artwork if artwork.name != @artwork.name
    end
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
