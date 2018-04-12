class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gallery = Galerie.last
    set_meta_tags title: "La galerie, contact, adresse",
                  description: "Informations sur la galerie physique, adresse, histoire de la galerie, informations de contact",
                  keywords: "adresse, histoire, galerie paris 17, galerie paris 17ème, galerie Paris, Galerie art, adresse galerie isabelle laverny, contact galerie isabelle laverny",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@gallery.photo}"
                      }
  end
end
