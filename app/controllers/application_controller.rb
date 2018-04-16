class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :gallery

  def after_sign_in_path_for(resource_or_scope)
    rails_admin_path
  end

  def gallery
    @gallery = Galerie.last
  end
end
