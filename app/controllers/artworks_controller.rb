class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # SEO
    I18n.locale = :fr
     # GET /artworks
    if params[:commit]
      domain = params[:commit].downcase
      @artworks = Artwork.where(artwork_domain: domain).order('priority ASC').all.page params[:page]
    else
      @artworks = Artwork.order('priority ASC').all.order(:name).page params[:page]
    end

    if @artworks.count > 0
      set_meta_tags title: "#{params[:commit]} Nos oeuvres",
                    description: "Découvrez les oeuvres #{params[:commit]} de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@artworks.first.photo}"
                        }
    else
      set_meta_tags title: "#{params[:commit]} Nos oeuvres",
                    description: "Découvrez les oeuvres #{params[:commit]} de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
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
    set_meta_tags title: "#{@artwork.name} - #{@artwork.artwork_domain} - #{@artwork.artist.first_name} #{@artwork.artist.last_name}",
                  description: "#{@artwork.name} #{@artwork.artwork_domain} #{@artwork.description} #{@artwork.price} #{@artwork.year}",
                  keywords: "art, peinture, galerie, Paris 17",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artwork.photo}"
                      }
  end

  # Never trust parameters from the scary internet, only allow the white list through
  def artworks_params
    params.require(:artwork).permit(:name, :dimensions, :type, :description, :photo)
  end
end
