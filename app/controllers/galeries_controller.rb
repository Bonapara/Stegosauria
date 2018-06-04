class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gallery = Galerie.last
    set_meta_tags title: "La galerie, contact, adresse",
                  description: "Originellement Maison sur Pilotis, la galerie change de nom en 2018 pour devenir Galerie Isabelle Laverny. Située au 27 rue Guersant dans le 17e arrondissement de paris, la galerie est ouverte du mardi au samedi.",
                  keywords: "Galerie d'art rue Guersant, Maison sur Pilotis Galerie Isabelle Laverny, Art de vivre paris 17, boutique ouverte samedi 17e, Objets décos 17e, de l'art à l'art de vivre",
                  og: {
                        title: :title,
                        site_name: :site,
                        description: :description,
                        image: "#{@gallery.photo}"
                      }
  end
end
