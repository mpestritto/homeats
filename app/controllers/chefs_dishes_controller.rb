class ChefsDishesController < ApplicationController
  
  before_filter :ischef?
  before_filter :check_chef_dish, :only => [ :show, :edit, :update, :destroy ]

  def check_chef_dish
    # make sure requested dish is one that belongs to this chef...  
    if ! current_user.dish_ids.index(params[:id].to_i)
      redirect_to root_path
    end    
  end


  # GET /dishes
  def index
    @dishes = current_user.dishes
  end

  # GET /dishes/1
  def show
    #check_chef_dish params[:id]
    @dish = Dish.find(params[:id])
  end


  # GET /dishes/new
  def new
    @dish = Dish.new
    @dish.user_id = current_user.id
  end

  # POST /dishes
  def create
    @dish = Dish.new(params[:dish])

    if @dish.save
      redirect_to( chefs_dish_path(@dish) , :notice => 'Dish was successfully created.')
    else
      render :action => "new"
    end
  end

  # GET /dishes/1/edit
  def edit
    @dish = Dish.find(params[:id])
  end

  # PUT /dishes/1
  def update
    @dish = Dish.find(params[:id])

    if @dish.update_attributes(params[:dish])
      redirect_to(chefs_dish_path, :notice => 'Dish was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /dishes/1
  # TODO:  do not delete dishes.  Only Active/Inactive
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    redirect_to(dishes_url)
  end
end
