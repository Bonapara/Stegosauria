class ArticlesController < ApplicationController
  def index
    @articles = Article.all.paginate(:page => params[:page], :per_page => 15)
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