class ExposController < ApplicationController
  skip_before_action :authenticate_user!

  def currents
    I18n.locale = :fr
    @expos = Expo.where(['date_from < ? AND date_to > ?', Time.now, Time.now])
    if @expos.count > 0
      set_meta_tags title: "#{@expos.first.expo_type} #{l(@expos.first.date_from, format: '%B')} Paris 17",
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo} |  galerie isabelle laverny, Paris 17"
                        }
    else
      set_meta_tags title: "Nos expositions en cours",
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
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
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo} |  galerie isabelle laverny, Paris 17"
                        }
    else
      set_meta_tags title: "Nos expositions futures",
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
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
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description,
                          image: "#{@expos.first.photo} |  galerie isabelle laverny, Paris 17"
                        }
    else
      set_meta_tags title: "Nos expositions passées",
                    description: "La galerie Isabelle Laverny propose des expositions permanentes et temporaires entre ses murs. Elle participe également à des foires en France et à l'étranger",
                    keywords: "exposition temporaire paris 17, exposition permanentes paris 17, vernissage paris ternes , Vernissage paris Pereire, Vernissage paris porte Maillot, Exposition paris Pereire, Vernissage paris 17, exposition galerie peinture paris, exposition collective galerie paris , Exposition photo paris, exposition paris 17, exposition peinture, exposition art, exposition artistes contemporains",
                    og: {
                          title: :title,
                          site_name: :site,
                          description: :description
                        }
    end
  end
end
