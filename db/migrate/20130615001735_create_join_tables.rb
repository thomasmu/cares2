class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :restaurants_specialties do |t|
      t.belongs_to :restaurant
      t.belongs_to :specialty
    end
    
    create_table :restaurants_speciaty_areas do |t|
      t.belongs_to :restaurant
      t.belongs_to :specialty_area
    end
    
    create_table :restaurants_city_regions do |t|
      t.belongs_to :restaurant
      t.belongs_to :city_region
    end
    
    create_table :restaurants_restaurant_types do |t|
      t.belongs_to :restaurant
      t.belongs_to :restaurant_type
    end
  end

end