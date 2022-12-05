class BookmarksController < ApplicationController

  def index
    @favorites = current_user.all_favorited
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @wine = Wine.find(params[:id])
    @user = current_user
    @bookmark.user = @user
    @bookmark.wine = @wine

    if @bookmark.save
      redirect_to wine_path(@wine)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def bookmark_params
    params.require(:bookmark).permit(:cave_presence, :stock, :wine)
  end


end
