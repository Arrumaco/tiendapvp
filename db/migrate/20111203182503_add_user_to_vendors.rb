class AddUserToVendors < ActiveRecord::Migration
  def self.up
    add_column :vendors, :user_id, :integer
  end
  
  def self.down
  end
end
