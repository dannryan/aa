class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :lastname
      t.string :firstname
      t.string :holding

      t.timestamps null: false
    end
  end
end
