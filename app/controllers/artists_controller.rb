class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!
  def index         # GET /artists
    @artists = Artist.all.page params[:page]

    # SEO
    if @artists.count > 0
      set_meta_tags title: "Nos artistes",
                    description: "La galerie Isabelle Laverny propose une sélection d'oeuvres d'art de différents artistes contemporain français et internationaux comme Karin Boinet, Michel Tréhet, Florence Lemiegre, Beatrice Lecomte, Martina Hejmalova, Victoire d'Harcourt, Juliette Lanos Meynial, Christine Miller et Nathalie Leverger.",
                    keywords: "Karin Boinet peinture, Karin Boinet Architecture, Karin Boinet photo, Karin Boinet œuvres, Karin Boinet dessin, Michel Tréhet photos, Michel Tréhet parisienne, Michel Tréhet plage, Michel Tréhet barbie, Michel Tréhet photo normandie, Michel Tréhet Deauville , Beatrice Lecomte installation, Beatrice Lecomte miniatures, Béatrice Lecomte Atelier d'artiste, Victoire d’Harcourt photo peinture, Victoire d'Harcourt sculpture, Victoire d’Harcourt palais de Tokyo, Victoire d’Harcourt musée, Catherine de Kerhor sculpture bronze, Catherine de Kerhor sculpture lampe, Nathalie Leverger peinture, Nathalie Leverger peinture mer, Nathalie Leverger bretagne, Nathalie Leverger textile, Martina Hejmalova monde miniature, Martina Hejmalova piscine, Martina Hejmalova aquarium, Florence Lemiegre Raku, Florence Lemiegre moon, Florence Lemiegre céramique, Florence Lemiegre culbuto, Lili Mirante bronze, Lili Mirante Sculpture, Lili Mirante femme, Lili Mirante sculpture animalière, Karine Daisay collage, Karine Daisay peinture, Karine Daisay oiseaux, Karine Daisay bretagne, Karine Daisay édition, Juliette Lanos mobile, Valerie Bétoulaud sérigraphie, Artistes contemporain paris, Artistes contemporain paris 17",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@artists.first.photo} | galerie Isabelle Laverny, Paris 17"
                        }
    else
      set_meta_tags title: "Nos artistes",
                    description: "Découvrez les artistes de la Galerie Isabelle Laverny",
                    keywords: "Karin Boinet peinture, Karin Boinet Architecture, Karin Boinet photo, Karin Boinet œuvres, Karin Boinet dessin, Michel Tréhet photos, Michel Tréhet parisienne, Michel Tréhet plage, Michel Tréhet barbie, Michel Tréhet photo normandie, Michel Tréhet Deauville , Beatrice Lecomte installation, Beatrice Lecomte miniatures, Béatrice Lecomte Atelier d'artiste, Victoire d’Harcourt photo peinture, Victoire d'Harcourt sculpture, Victoire d’Harcourt palais de Tokyo, Victoire d’Harcourt musée, Catherine de Kerhor sculpture bronze, Catherine de Kerhor sculpture lampe, Nathalie Leverger peinture, Nathalie Leverger peinture mer, Nathalie Leverger bretagne, Nathalie Leverger textile, Martina Hejmalova monde miniature, Martina Hejmalova piscine, Martina Hejmalova aquarium, Florence Lemiegre Raku, Florence Lemiegre moon, Florence Lemiegre céramique, Florence Lemiegre culbuto, Lili Mirante bronze, Lili Mirante Sculpture, Lili Mirante femme, Lili Mirante sculpture animalière, Karine Daisay collage, Karine Daisay peinture, Karine Daisay oiseaux, Karine Daisay bretagne, Karine Daisay édition, Juliette Lanos mobile, Valerie Bétoulaud sérigraphie, Artistes contemporain paris, Artistes contemporain paris 17",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end


  end

  def show          # GET /artists/:id
    @artist = Artist.find(params[:id])
    @artworks = Artwork.all
    set_meta_tags title: "#{@artist.first_name} #{@artist.last_name} - #{@artist.speciality1} #{@artist.speciality2}",
                  description: "#{@artist.first_name} #{@artist.last_name}, #{@artist.biography} #{@artist.speciality1} #{@artist.speciality2}",
                  keywords: "art, peinture, galerie, Paris 17",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@artist.photo} | galerie Isabelle Laverny, Paris 17"
                      }
  end

  # Never trust parameters from the scary internet, only allow the white list through
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :bio, :domain)
  end
end
