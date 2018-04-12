class ActusController < ApplicationController
  def index
    I18n.locale = :fr
    @actus = Actu.all
    # Array containing all the years
    years = []
    Actu.all.each { |actu| years << actu.date_from.year }
    @years = years.uniq.sort
    set_meta_tags title: "Notre actualité",
                  description: "Découvrez les dernières nouvelles de la Galerie Isabelle Laverny, évenements - presse - articles - expos",
                  keywords: "évenements, presse, articles, expos, news, blog, actualités, actualités galerie isabelle laverny"
                  # ,og: {
                  #       title: :title,
                  #       site_name: :site,
                  #       description: :description,
                  #       image: "#{@actus.first.photo}"
                  #     }
  end
end
