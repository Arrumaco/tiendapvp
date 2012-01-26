class AddVendorToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :vendor_id, :integer, :default => 1
  end
end
