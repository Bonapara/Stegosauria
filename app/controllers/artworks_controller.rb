class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # SEO
    I18n.locale = :fr
     # GET /artworks
    if params[:commit]
      domain = params[:commit]
      @artworks = Artwork.where(artwork_domain: domain).order('priority ASC').all.page params[:page]
    else
      @artworks = Artwork.order('priority ASC').all.order('priority ASC').page params[:page]
    end

    if @artworks.count > 0
      set_meta_tags title: "#{params[:commit]} Nos oeuvres",
                    description: "La Galerie Isabelle Laverny propose une sélection d'oeuvres d'artistes contemporains. Sculptures en bronze, en terre en bois et en résines, peintures, dessins, photographies, collages, installations, céramiques, édition, sérigraphie et pièces uniques sont visibles à la galerie.",
                    keywords: "Art work, œuvre d'art, art paris, Huile sur toile, collage, Installation, ateliers d'artistes miniatures, boite miniature, musée miniature, photographie, édition, sérigraphie, oeuvre d'art cadeaux, petits prix, céramique paris, Edition sérigraphie paris, sculpture en bronze, Sculpture en terre, sculpture en résine, sculpture d’animaux en bronze, sculpture animaux terre , sculpture hippopotame , sculpture femme nu bronze, sculpture bronze lampe, sculpture éléphant, sculpture ours bronze , sculpture autruche, sculpture papier, Sculpture plongeuse, photographie Serre d’Auteuil artiste, photographie Barbie paris artiste, photographie Normandie plages, photographie Piscines , photographie Trouville , photographie Deauville, dessin station de métro, dessin new-york, céramique valérie le Roux , céramique du sud paris, céramique valérie le Roux paris , céramique vlb paris, acheter céramique valérie le Roux",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@artworks.first.photo} |  galerie isabelle laverny, Paris 17"
                        }
    else
      set_meta_tags title: "#{params[:commit]} Nos oeuvres",
                    description: "Découvrez les oeuvres #{params[:commit]} de la Galerie Isabelle Laverny",
                    keywords: "Art work, œuvre d'art, art paris, Huile sur toile, collage, Installation, ateliers d'artistes miniatures, boite miniature, musée miniature, photographie, édition, sérigraphie, oeuvre d'art cadeaux, petits prix, céramique paris, Edition sérigraphie paris, sculpture en bronze, Sculpture en terre, sculpture en résine, sculpture d’animaux en bronze, sculpture animaux terre , sculpture hippopotame , sculpture femme nu bronze, sculpture bronze lampe, sculpture éléphant, sculpture ours bronze , sculpture autruche, sculpture papier, Sculpture plongeuse, photographie Serre d’Auteuil artiste, photographie Barbie paris artiste, photographie Normandie plages, photographie Piscines , photographie Trouville , photographie Deauville, dessin station de métro, dessin new-york, céramique valérie le Roux , céramique du sud paris, céramique valérie le Roux paris , céramique vlb paris, acheter céramique valérie le Roux",
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
                        image: "#{@artwork.photo} |  galerie isabelle laverny, Paris 17"
                      }
  end

  # Never trust parameters from the scary internet, only allow the white list through
  def artworks_params
    params.require(:artwork).permit(:name, :dimensions, :type, :description, :photo)
  end
end
