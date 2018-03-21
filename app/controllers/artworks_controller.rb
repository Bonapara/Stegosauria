class ArtworksController < ApplicationController
  def index         # GET /artworks
    @artworks = Artwork.all
  end

  def show          # GET /artworks/:id
    @artwork = Artwork.find(params[:id])
  end

  def sculptures   # GET /sculptures
    @artworks = Artwork.where(artwork_domain: "sculpture")
    # @sculpture = "hey"
  end

  def paintings     # GET /paintings
    @artworks = Artwork.where(artwork_domain: "peinture")
  end

  def photographs   # GET /photographs
    @artworks = Artwork.where(artwork_domain: "photographie")
  end

  def drawings      # GET /drawings
    @artworks = Artwork.where(artwork_domain: "dessin")
  end

  def ceramics      # GET /ceramics
    @artworks = Artwork.where(artwork_domain: "céramique")
  end

  def installations # GET /installations
    @artworks = Artwork.where(artwork_domain: "installation")
  end

  def editions      # GET /editions
    @artworks = Artwork.where(artwork_domain: "edition")
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
