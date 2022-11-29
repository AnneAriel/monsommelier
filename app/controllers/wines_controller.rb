class WinesController < ApplicationController

  def index
    # @wines = policy_scope(Wine)
    # if params[:query].present?
    #   @wines = Bike.search_by_wine_criteria(params[:query])
    # else
  @wines = Wine.all
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

def destroy
  @wine = Wine.find(params[:id])
  # authorize @wine
  @wine.destroy
  redirect_to wines_path
end


private

  def wine_params
    params.require(:wine).permit(:nom, :appellation, :annee, :couleur, :code_barre, :nom_commercial, :provenance, :cepage, :photo)
  end

end
