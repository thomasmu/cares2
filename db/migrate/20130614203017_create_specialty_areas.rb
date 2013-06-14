class CreateSpecialtyAreas < ActiveRecord::Migration
  def change
    create_table :specialty_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
