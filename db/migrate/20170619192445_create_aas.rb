class CreateAas < ActiveRecord::Migration
  def change
    create_table :aas do |t|
      t.string :aclass
      t.string :segment
      t.string :sub_segment

      t.timestamps null: false
    end
  end
end
