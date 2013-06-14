class SpecialtyAreasController < ApplicationController
  def index
    @specialty_areas = SpecialtyArea.all
    @specialty_area = SpecialtyArea.new
  end
  
  def create
    specialty_area = SpecialtyArea.new params[:specialty_area]
    if specialty_area.save
      redirect_to :back, :notice => 'Cuisine type berhasil didaftarkan'
    else
      redirect_to :back, :notice => 'Cuisine type gagal didaftarkan'
    end
  end
  
  def edit
    @specialty_area = SpecialtyArea.find params[:id]
  end
  
  def update
    specialty_area = SpecialtyArea.find params[:id]
    if specialty_area.update_attributes params[:specialty_area]
      redirect_to specialty_areas_path, :notice => 'Cuisine type berhasil dirubah'
    else
      redirect_to :back, :notice => 'Cuisine type gagal dirubah'
    end
  end
end
