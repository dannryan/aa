class AddRecommendationToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :recommendation, :integer
  end
end
