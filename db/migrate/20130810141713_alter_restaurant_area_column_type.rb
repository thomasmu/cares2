class AlterRestaurantAreaColumnType < ActiveRecord::Migration
  def up
    remove_column :restaurants, :area
    add_column :restaurants, :area_id, :integer  
  end

  def down
    remove_column :restaurants, :area_id
    add_column :restaurants, :area, :string
  end
end
