class ActusController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    I18n.locale = :fr
    @actus = Actu.all
    # Array containing all the years
    years = []
    Actu.all.each { |actu| years << actu.publication_date.year }
    @years = years.uniq.sort
    if @actus.count > 0
      set_meta_tags title: "Notre actualité",
                    description: "Découvrez les dernières nouvelles de la Galerie Isabelle Laverny, évenements - presse - articles - expos",
                    keywords: "évenements, presse, articles, expos, news, blog, actualités, actualités galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@actus.first.photo}"
                        }
    else
      set_meta_tags title: "Notre actualité",
                    description: "Découvrez les dernières nouvelles de la Galerie Isabelle Laverny, évenements - presse - articles - expos",
                    keywords: "évenements, presse, articles, expos, news, blog, actualités, actualités galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end
  end
end
