class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create bookmark_params
    redirect_to bookmark # /artists/:some_id i.e. the show page
  end

  def edit
    @bookmark = Bookmark.find params[:id]
  end

  def update
    bookmark = Bookmark.find params[:id]
    bookmark.update bookmark_params
    redirect_to bookmark
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  def destroy
    bookmark = Bookmark.find params[:id]
    bookmark.destroy
    redirect_to artists_path
  end

  # Strong params: a whitelist of permitted fields
  private
  def bookmark_params
    params.require(:bookmark).permit(:title, :description, :image)
  end
end
