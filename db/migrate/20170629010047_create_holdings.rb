class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.string :name
      t.string :location
      t.string :aclass
      t.string :segment
      t.string :sub_segment
      t.integer :value

      t.timestamps null: false
    end
  end
end
