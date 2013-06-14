class CityRegion < ActiveRecord::Base
  attr_accessible :city, :name
  
  validates :name, :city, presence: true
  validates :name, uniqueness: {:case_sensitive => false}
end
