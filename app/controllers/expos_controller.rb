class ExposController < ApplicationController
  skip_before_action :authenticate_user!
  def index

  end

  def currents   # GET /sculptures
    @expos = Expo.where(['date_from < ? AND date_to > ?', Time.now, Time.now])
  end

  def futures     # GET /paintings
    @expos = Expo.where( "date_from > ?", Time.now )
  end

  def pasts   # GET /photographs
    @expos = Expo.where( "date_to < ?", Time.now )
  end
end
