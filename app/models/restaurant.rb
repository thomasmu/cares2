class Restaurant < ActiveRecord::Base
  attr_accessible :address, :area, :average_spending, :category_id, :chain, :city_region_id, :delivery, 
  		:halal_certificate, :keyword, :map, :name, :off_day, :operating_hour, :operating_weekend, 
  		:outdoor, :park_area, :payment_option, :phone, :reservation_needed, :restaurant_type_id, 
  		:seat, :specialty_area_id, :specialty_id, :vip_room, :website, :wifi
  
  validates :name, presence: true
  
  def search
  end
end
