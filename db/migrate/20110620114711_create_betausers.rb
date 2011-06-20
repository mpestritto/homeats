class CreateBetausers < ActiveRecord::Migration
  def self.up
    create_table :betausers do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :betausers
  end
end
