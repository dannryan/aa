class AddClientIdToHoldings < ActiveRecord::Migration
  def change
    add_column :holdings, :client_id, :integer
  end
end
