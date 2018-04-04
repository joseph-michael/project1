class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def create
    website = Website.create website_params
    redirect_to website # /artists/:some_id i.e. the show page
  end

  def edit
    @website = Website.find params[:id]
  end

  def update
    website = Website.find params[:id]
    website.update website_params
    redirect_to website
  end

  def show
    @website = Website.find params[:id]
  end

  def destroy
    website = Website.find params[:id]
    website.destroy
    redirect_to artists_path
  end

  # Strong params: a whitelist of permitted fields
  private
  def website_params
    params.require(:website).permit(:title, :description, :image, :link)
  end
end
