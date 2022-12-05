class BookmarksController < ApplicationController

  def index
    @favorites = current_user.all_favorited
    if params[:query]
      p "ici"
      if params[:query] == "wine"
        @favorites = current_user.favorited_by_type('Wine')
        p @favorites
      elsif params[:query] == "match"
        @favorites = current_user.favorited_by_type('Match')
      end
    end
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "index_wine_match", locals: {favorites: @favorites}, formats: [:html] }
    end
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
