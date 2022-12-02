class WinesController < ApplicationController

  def index
    # @wines = policy_scope(Wine)
    if params[:query].present?
      @wines = []
      @dishes = []
      @results = PgSearch.multisearch(params[:query])
      @results.each do |dish|
        @dish = dish.searchable
        @dish.matches.each do |match|
          @wines << match.wine
          @dishes << match.dish

        end
      end
    else
      @wines = Wine.all
    end
  end


def show
  @wine = Wine.find(params[:id])
  # authorize @wine
end

def new
  @wine = Wine.new
  # authorize @wine
end

def create
  @wine = Wine.new(wine_params)
    @wine.save
    redirect_to wine_path(@wine)
    # authorize @wine
end


def edit
  @wine = Wine.find(params[:id])
end

def update
  @wine = Wine.find(params[:id])
  # @wine.update(rating: params[:wine][:note])
  @wine.update(wine_params)


  redirect_to wine_path(@wine)
end

def destroy
  @wine = Wine.find(params[:id])
  # authorize @wine
  @wine.destroy
  redirect_to wines_path
end

def set_favorite
  @wine = Wine.find(params[:wine_id])
  if current_user.favorited?(@wine)
    current_user.unfavorite(@wine)
  else
    current_user.favorite(@wine)
  end
end


private

  def wine_params
    params.require(:wine).permit(:nom, :appellation, :annee, :couleur, :code_barre, :nom_commercial, :provenance, :cepage, :photo)
  end

end
