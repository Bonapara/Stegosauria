class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
    rails_admin_path
  end

  def newsletter_new_email
    NewsletterMailer.capart(params[:query]).deliver_now
  end
end
