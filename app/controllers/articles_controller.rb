class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @articles = Article.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end
end
