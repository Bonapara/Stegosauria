class ActusController < ApplicationController
  def index
    I18n.locale = :fr
    @actus = Actu.all
    # Array containing all the years
    years = []
    Actu.all.each { |actu| years << actu.date_from.year }
    @years = years.uniq.sort
  end
end
