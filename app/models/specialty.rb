class Specialty < ActiveRecord::Base
  attr_accessible :name
  
  has_many :restaurants
  
  validates :name, presence: true
  validates :name, uniqueness: {:case_sensitive => false}
end
