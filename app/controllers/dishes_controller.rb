class DishesController < ApplicationController

  # GET /dishes --- everyone can see this page.  All Dishes
  def index
    @dishes = Dish.where(:isactive => true)
  end

  # GET /dishes/1 --- everyone can see this page.  Specific Dish
  def show
    @dish = Dish.find(params[:id])
    if ! @dish.isactive 
      redirect_to dishes_path
    end
  end

end
