class UsersController < ApplicationController

  def index
    @usersbookmarks = UsersBookmark.all
    @websites = Website.all
  end

  def new
    @usersbookmark = UsersBookmark.new
  end

  def create
    # verify it link already exists. if extists take existing website_id and current user_id write to user_bookmarks
    website = Website.create website_params
    redirect_to website # /artists/:some_id i.e. the show page
  end


  # def edit
  #   @website = Website.find params[:id]
  # end
#
  # def update
  #   website = Website.find params[:id]
  #   website.update website_params
  #   redirect_to website
  # end
  #
  # def show
  #   @website = Website.find params[:id]
  # end
  #
  # def destroy
  #   website = Website.find params[:id]
  #   website.destroy
  #   redirect_to artists_path
  # end
  #
  # # Strong params: a whitelist of permitted fields
  # private
  # def website_params
  #   params.require(:website).permit(:title, :description, :image, :link)
  # end
end
