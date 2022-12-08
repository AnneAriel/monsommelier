class MatchesController < ApplicationController
before_action :set_match, only: %i[show destroy]

  def index
    if params[:query].present?
      # raise
      @matches = Match.matches_search(params[:query])
      @recos = Wine.joins(matches: :dish)
                   .where(dishes: { id: Dish.search_by_nom_et_caracteristique(params[:query]).pluck(:id) })
    elsif params[:query] == ""
      redirect_to matches_path
    else
      @matches = Match.all
    end
  end

  def show
  end

  def edit
    @match = Match.find(params[:id])
  end


  def new
    @match = Match.new
    @appellations = Wine.all.pluck(:appellation)
    @noms_vin = Wine.all.pluck(:nom)
    @noms_commercial = Wine.all.pluck(:nom_commercial)
    @provenances = Wine.all.pluck(:provenance)
    @cépages = Wine.all.pluck(:cépage)
    @years = Wine.all.pluck(:annee)
    @noms = Dish.all.pluck(:nom)
  end

  def create
    if Wine.find_by(wine_params)
      @wine = Wine.find_by(wine_params)
    else
      @wine = Wine.create(wine_params)
    end
    if Dish.find_by(dish_params)
      @dish = Dish.find_by(dish_params)
    else
      @dish = Dish.create(dish_params)
    end
    @match = Match.new
    @match.wine = @wine
    @match.dish = @dish
    @match.user = current_user
    #authorize @comment
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

def all_favorite_matches
  @matches = Match.all
    if current_user.all_favorites
      current_user.all_favorites
    end
end

def all_favorites
    if current_user.all_favorites
      current_user.all_favorites
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
