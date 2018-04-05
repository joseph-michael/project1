class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new

  end

  def create
    # verify it link already exists. if extists take existing website_id and current user_id write to user_webistes
    # @user.id = (user_id:current_user.id)

    website = Website.create website_params
    if website.save
      current_user.websites << website
      redirect_to website_path(website.id)

    else
      redirect_to root_path
    end

    # redirect_to website # /artists/:some_id i.e. the show page
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
    redirect_to websites_path
  end

  def explore
    @websites = Website.all
  end

  # Strong params: a whitelist of permitted fields
  private
  def website_params
    params.require(:website).permit(:title, :description, :image, :link)
  end
end
