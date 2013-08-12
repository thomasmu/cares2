class AreasController < ApplicationController
  def index
    @regions = CityRegion.all
    @areas = Area.all
    @area = Area.new
  end
  
  def create
    area = Area.new params[:area]
    if area.save
      redirect_to :back, :notice => 'Data Area berhasil disimpan'
    else
      redirect_to :back, :notice => 'Data gagal disimpan'
    end
  end
  
  def edit
    @area = Area.find params[:id]
    @regions = CityRegion.all
  end
  
  def update
    area = Area.find params[:id]
    if area.update_attributes params[:area]
      redirect_to areas_path, :notice => 'Data area berhasil diubah'
    else
      redirect_to :back, :notice => 'Data gagal diubah'
    end
  end
end
