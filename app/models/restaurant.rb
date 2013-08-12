class Restaurant < ActiveRecord::Base
  attr_accessible :address, :area_id, :average_spending, :category_id, :chain, :city_region_id, :delivery, 
  		:halal_certificate, :keyword, :map, :name, :off_day, :operating_hour, :operating_weekend, 
  		:outdoor, :park_area, :payment_option, :phone, :reservation_needed, :restaurant_type_id, 
  		:seat, :specialty_area_id, :specialty_id, :vip_room, :website, :wifi, 
  		:dish_list, :specialty_list, :day_off_list, :category_list, :payment_method_list

  belongs_to :specialty
  belongs_to :specialty_area
  belongs_to :restaurant_type
  belongs_to :city_region
  belongs_to :area
  
  acts_as_taggable_on :specialties, :dishes, :categories, :day_offs, :payment_methods
  
  validates :name, :address, :operating_hour, presence: {message: "tidak boleh kosong"}
  validates :address, uniqueness: {case_sensitive: false, message: "sudah ada yg pakai" }
  validates :phone, format: {with: /\A\(?\d+\)?\-?\d+\z/, message: "hanya boleh angka"}, allow_blank: true
  #validates_with CustomValidator
  
  before_save :create_permalink
  
  def search
  end
  
  def to_param
    permalink
  end
  
  private
  def create_permalink
    text = "#{name}-#{id}"
    self.permalink = text.gsub(" ", "-").downcase
  end
  
end

class CustomValidator < ActiveModel::Validator
  def validate(record)
    if record.name.nil?
      record.errors[:base] << "Error Occurs"
    end
  end
end
