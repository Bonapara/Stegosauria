class ExposController < ApplicationController
  skip_before_action :authenticate_user!
  def index

  end

  def currents   # GET /sculptures
    I18n.locale = :fr
    @expos = Expo.where(['date_from < ? AND date_to > ?', Time.now, Time.now])
  end

  def futures     # GET /paintings
    @expos = Expo.where( "date_from > ?", Time.now )
  end

  def pasts   # GET /photographs
    @expos = Expo.where( "date_to < ?", Time.now )
    # Array containing all the years
    years = []
    Expo.all.each { |expo| years << expo.date_from.year }
    @years = years.uniq.sort
  end
end
