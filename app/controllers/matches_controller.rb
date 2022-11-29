class MatchesController < ApplicationController
before_action
  # def index
  # end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
      if @match.save
        redirect_to match_wine_path(@match)
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

  private

  def match_params
    params.require(:match).permit(:wine_id, :dish_id)
  end

end
