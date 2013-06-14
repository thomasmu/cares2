class RestaurantType < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true
  validates :name, uniqueness: {:case_sensitive => false}
end
