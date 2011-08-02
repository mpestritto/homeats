class AddActiveToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :isactive, :boolean, :default => false
  end

  def self.down
    remove_column :dishes, :isactive
  end
end
