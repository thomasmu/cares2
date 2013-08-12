class Area < ActiveRecord::Base
  attr_accessible :name, :city_region_id
  
  has_many :restaurants
  belongs_to :city_region
  
  validates :name, presence: true
  validates :name, uniqueness: {:case_sensitive => false}
end
