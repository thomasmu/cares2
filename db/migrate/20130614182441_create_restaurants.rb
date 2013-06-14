class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :area
      t.integer :city_region_id
      t.string :phone
      t.string :operating_hour
      t.string :operating_weekend
      t.string :off_day
      t.string :website
      t.integer :specialty_id
      t.integer :specialty_area_id
      t.integer :restaurant_type_id
      t.string :keyword
      t.integer :category_id
      t.integer :seat
      t.float :map
      t.boolean :chain
      t.integer :average_spending
      t.boolean :delivery
      t.boolean :park_area
      t.boolean :vip_room
      t.boolean :wifi
      t.boolean :reservation_needed
      t.boolean :outdoor
      t.boolean :halal_certificate
      t.integer :payment_option

      t.timestamps
    end
  end
end
