class ActusController < ApplicationController
  def index
    I18n.locale = :fr
    @actus = Actu.all
    # Array containing all the years
    years = []
    Actu.all.each { |actu| years << actu.date_from.year }
    @years = years.uniq.sort
    @page_title = "Notre actualité : évenements - presse - articles - expos"
  end
end
