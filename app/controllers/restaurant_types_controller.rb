class RestaurantTypesController < ApplicationController
  def index
    @restaurant_types = RestaurantType.all
    @restaurant_type = RestaurantType.new
  end
  
  def create
    restaurant_type = RestaurantType.new params[:restaurant_type]
    if restaurant_type.save
      redirect_to :back, :notice => 'Tipe restoran berhasil didaftarkan.'
    else
      redirect_to :back, :notice => 'Tipe restoran gagal didaftarkan.'
    end
  end
  
  def edit
    @restaurant_type = RestaurantType.find params[:id]
  end
  
  def update
    restaurant_type = RestaurantType.find params[:id]
    if restaurant_type.update_attributes params[:restaurant_type]
      redirect_to restaurant_types_path, :notice => 'Berhasil update'
    else
      redirect_to :back, :notice => 'Gagal update'
    end
  end
end
