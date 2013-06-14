class CityRegionsController < ApplicationController
  def index
    @regions = CityRegion.all
    @region = CityRegion.new
  end

  def create
    region = CityRegion.new params[:city_region]
    if region.save
      redirect_to :back, :notice => 'Data kota berhasil disimpan'
    else
      redirect_to :back, :notice => 'Data gagal disimpan'
    end
  end

  def edit
    @region = CityRegion.find params[:id]
  end
  
  def update
    region = CityRegion.find params[:id]
    if region.update_attributes params[:city_region]
      redirect_to city_regions_path, :notice => 'Data kota berhasil diubah'
    else
      redirect_to :back, :notice => 'Data gagal diubah'
    end
  end
end
