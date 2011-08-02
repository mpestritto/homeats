class CreateChefsProfiles < ActiveRecord::Migration
  def self.up
    create_table :chefs_profiles do |t|
      t.string :title
      t.string :description
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :chefs_profiles
  end
end
