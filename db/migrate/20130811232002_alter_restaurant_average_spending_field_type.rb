class AlterRestaurantAverageSpendingFieldType < ActiveRecord::Migration
  def up
    change_column :restaurants, :average_spending, :string
  end

  def down
    change_column :restaurants, :average_spending, :integer
  end
end
