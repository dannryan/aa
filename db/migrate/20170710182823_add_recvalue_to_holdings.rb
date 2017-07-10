class AddRecvalueToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :recvalue, :integer
  end
end
