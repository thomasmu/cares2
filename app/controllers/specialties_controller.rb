class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.all
    @specialty = Specialty.new
  end
  
  def create
    specialty = Specialty.new params[:specialty]
    if specialty.save
      redirect_to :back, :notice => 'Specialty berhasil didaftarkan'
    else
      redirect_to :back, :notice => 'Specialty gagal didaftarkan'
    end
  end
  
  def edit
    @specialty = Specialty.find params[:id]
  end
  
  def update
    specialty = Specialty.find params[:id]
    if specialty.update_attributes params[:specialty]
      redirect_to specialties_path, :notice => 'Specialty berhasil dirubah'
    else
      redirect_to :back, :notice => 'Specialty gagal dirubah'
    end
  end
end
