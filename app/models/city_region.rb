class CityRegion < ActiveRecord::Base
  attr_accessible :city, :name
  
  has_many :restaurants
  has_many :areas
  
  validates :name, :city, presence: true
  validates :name, uniqueness: {:case_sensitive => false}
  
  def display_name
    "#{name} - #{city}"
  end
end
