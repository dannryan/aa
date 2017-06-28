class RemoveHoldingFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :holding, :string
  end
end
