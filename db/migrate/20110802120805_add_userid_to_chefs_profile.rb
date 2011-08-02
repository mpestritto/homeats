class AddUseridToChefsProfile < ActiveRecord::Migration
  def self.up
    add_column :chefs_profiles, :user_id, :string
  end

  def self.down
    remove_column :chefs_profiles, :user_id
  end
end
