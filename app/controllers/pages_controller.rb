class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :legal, :data_privacy, :terms_of_service]

  def home
  end

  def legal
  end

  def data_privacy
  end

  def terms_of_service
  end
end
