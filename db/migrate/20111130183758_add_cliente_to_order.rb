class AddClienteToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :cliente_id, :integer
  end
  
  def self.down
  end
end

