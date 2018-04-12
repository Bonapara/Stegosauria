class ExposController < ApplicationController
  skip_before_action :authenticate_user!

  def currents
    I18n.locale = :fr
    @expos = Expo.where(['date_from < ? AND date_to > ?', Time.now, Time.now])
    @page_title = "#{@expos.first.expo_type} #{l(@expos.first.date_from, format: '%B')} Paris 17"
  end

  def futures
    I18n.locale = :fr
    @expos = Expo.where( "date_from > ?", Time.now )
    @page_title = "#{@expos.first.expo_type} #{l(@expos.first.date_from, format: '%B')} Paris 17"
  end

  def pasts
    I18n.locale = :fr
    @expos = Expo.where( "date_to < ?", Time.now )
    # Array containing all the years
    years = []
    Expo.all.each { |expo| years << expo.date_from.year }
    @years = years.uniq.sort
    @page_title = "Nos expositions passées"
  end
end
