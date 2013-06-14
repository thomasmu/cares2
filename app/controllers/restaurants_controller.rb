class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    Restaurant.create params[:restaurant]
    redirect_to restaurants_path
  end
  
  def edit
    @restaurant = Restaurant.find params[:id]
  end
  
  def update
    restaurant = Restaurant.find params[:id]
    
    if restaurant.update_attributes params[:restaurant]
      redirect_to restaurants_path, :notice => 'Update succesful!'
    else
      redirect_to :back, :notice => 'There was an error updateing restaurant'
    end
  end
  
  def destroy
    Restaurant.destroy params[:id]
    redirect_to :back, :notice => 'Restaurant has been deleted'
  end
end
