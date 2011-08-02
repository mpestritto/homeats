class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.float :cost_per_dish

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
