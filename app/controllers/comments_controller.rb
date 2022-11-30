class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end

  def show
    @wine = Wine.find(params[:wine_id])
    @comment = Comment.find(params[:id])
  end

  def new
    if params[:wine_id]
      @wine = Wine.find(params[:wine_id])
    end
    if params[:dish_id]
      @dish = Dish.find(params[:dish_id])
    end
    if params[:match_id]
      @match = Match.find(params[:match_id])
    end
    @comment = Comment.new
    #authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)

    if params[:wine_id]
      @wine = Wine.find(params[:wine_id])
      @comment.commented_on = @wine
    end
    if params[:dish_id]
      @dish = Dish.find(params[:dish_id])
      @comment.commented_on = @dish
    end
    if params[:match_id]
      @match = Match.find(params[:match_id])
      @comment.commented_on = @match
    end

    @comment.user = current_user
    if @comment.save
      redirect_to wine_comment_path(@wine, @comment)
    else
      render :new, status: :unprocessable_entity
    end
    #authorize @comment
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to comment_path(@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    #authorize @comment
    @comment.destroy
    redirect_to comments_path
  end

  private

  #def set_wine
  #  @wine = Wine.find(params[:wine_id])
  #end

  #def set_dish
  #  @dish = Dish.find(params[:dish_id])
  #end

  #def set_match
  #  @match = Match.find(params[:match_id])
  #end


  def comment_params
    params.require(:comment).permit(:commentaire, :note, :commented_on_id, :commented_on_type)
  end

end
