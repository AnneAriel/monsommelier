class MatchesController < ApplicationController
before_action :set_match, only: %i[show destroy]

  def index
    @matches = Match.all
  end

  def show
  end

  def new
    @match = Match.new
    @appellations = Wine.all.pluck(:appellation)
    @years = Wine.all.pluck(:annee)
  end

  def create
    @wine = Wine.create(wine_params)
    @dish = Dish.create(dish_params)
    @match = Match.new
    @match.wine = @wine
    @match.dish = @dish
    @match.user = current_user
    if @match.save
      redirect_to match_path(@match)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @match.destroy
    redirect_to root_path
  end

  def set_favorite
    @match = Match.find(params[:match_id])
    if current_user.favorited?(@match)
      current_user.unfavorite(@match)
    else
      current_user.favorite(@match)
    end
  end


  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:wine_id, :dish_id)
  end

  def wine_params
    params.require(:match).require(:wine).permit(:nom, :appellation, :couleur, :annee, :code_barre, :nom_commercial, :provenance, :cépage)
    #params.require(:wine).permit(:nom, :appellation, :couleur, :annee, :code_barre, :nom_commercial, :provenance, :cépage)
  end

  def dish_params
    params.require(:match).require(:dish).permit(:nom)
  end

end
