class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find_by_permalink params[:id]
  end
  
  def new
    @restaurant = Restaurant.new
    prepare_collection_data
  end
  
  def create
    restaurant = Restaurant.create params[:restaurant]
    if restaurant.save
      redirect_to restaurants_path, :notice => "\'#{restaurant.name}\' telah berhasil ditambahkan"
    else
      @restaurant = restaurant
      prepare_collection_data
      flash[:notice] = 'Ada kesalahan dalam pengisian data'
      render :new
    end
    
  end
  
  def edit
    @restaurant = Restaurant.find_by_permalink params[:id]
    prepare_collection_data
  end
  
  def update
    restaurant = Restaurant.find_by_permalink params[:id]
    
    if restaurant.update_attributes params[:restaurant]
      redirect_to restaurants_path, :notice => 'Update succesful!'
    else
      redirect_to :back, :notice => 'There was an error updateing restaurant'
    end
  end
  
  def destroy
    restaurant = Restaurant.find_by_permalink params[:id]
    restaurant.destroy
    redirect_to :back, :notice => 'Restaurant has been deleted'
  end
  
  private
  def prepare_collection_data
    @areas = Area.all
    @regions = CityRegion.all
    @restaurant_types = RestaurantType.all
    @specialties = Restaurant.tag_counts_on(:dishes)
    @specialty_areas = SpecialtyArea.all
    @categories = Restaurant.tag_counts_on(:categories)
    @pricing = ["dibawah 30.000", "30.000 - 50.000", "50.000 - 100.000", "100.000 - 250.000", "diatas 250.000"]
    @payment = Restaurant.tag_counts_on(:payment_methods)
    @day_offs = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
  end
end
