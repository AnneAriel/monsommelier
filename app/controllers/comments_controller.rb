class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end

  def show
    if params[:wine_id]
      @wine = Wine.find(params[:wine_id])
      @comment = Comment.find(params[:id])
    end
    if params[:dish_id]
      @dish = Dish.find(params[:dish_id])
      @comment = Comment.find(params[:id])
    end
    if params[:match_id]
      @match = Match.find(params[:match_id])
      @comment = Comment.find(params[:id])
    end
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

    if @comment.save && params[:wine_id]
      redirect_to wine_path(@wine, @comment)
    elsif @comment.save && params[:dish_id]
      redirect_to dish_path(@dish, @comment)
    elsif @comment.save && params[:match_id]
      redirect_to match_path(@match, @comment)
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
    #redirect_to comment_path(@comment)
    if params[:wine_id]
      redirect_to wine_comment_path(@wine, @comment)
    elsif params[:dish_id]
      redirect_to dish_comment_path(@dish, @comment)
    elsif params[:match_id]
      redirect_to match_comment_path(@match, @comment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    #authorize @comment
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:commentaire, :note, :commented_on_id, :commented_on_type)
  end

end
