class ExposController < ApplicationController
  skip_before_action :authenticate_user!

  def currents
    I18n.locale = :fr
    @expos = Expo.where(['date_from < ? AND date_to > ?', Time.now, Time.now])
    if @expos.count > 0
      set_meta_tags title: "#{@expos.first.expo_type} #{l(@expos.first.date_from, format: '%B')} Paris 17",
                    description: "Découvrez les expositions en cours de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17, expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo}"
                        }
    else
      set_meta_tags title: "Nos expositions en cours",
                    description: "Découvrez les expositions en cours de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17, expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end
  end

  def futures
    I18n.locale = :fr
    @expos = Expo.where( "date_from > ?", Time.now )
    if @expos.count > 0
      set_meta_tags title: "#{@expos.first.expo_type} #{l(@expos.first.date_from, format: '%B')} Paris 17",
                    description: "Découvrez les expositions futures de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17, expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo}"
                        }
    else
      set_meta_tags title: "Nos expositions futures",
                    description: "Découvrez les expositions futures de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17, expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end
  end

  def pasts
    I18n.locale = :fr
    @expos = Expo.where( "date_to < ?", Time.now )
    # Array containing all the years
    years = []
    Expo.all.each { |expo| years << expo.date_from.year }
    @years = years.uniq.sort
    if @expos.count > 0
      set_meta_tags title: "Nos expositions passées",
                    description: "Découvrez les expositions passées de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17,  expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo}"
                        }
    else
      set_meta_tags title: "Nos expositions passées",
                    description: "Découvrez les expositions passées de la Galerie Isabelle Laverny",
                    keywords: "art, peinture, galerie, Paris 17,  expositions, exposition, exposition paris 17, exposition paris 17ème, exposition galerie isabelle laverny",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end
  end
end
