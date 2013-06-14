class CreateCityRegions < ActiveRecord::Migration
  def change
    create_table :city_regions do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
