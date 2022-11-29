class DishesController < ApplicationController
before_action :set_dish, only: %i[show edit update destroy]
  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dish_path(@dish)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @dish.update(dish_params)
    redirect_to dish_path(@dish)
  end

  def destroy
    @dish.destroy
    redirect_to root_path
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:nom)
  end
end
