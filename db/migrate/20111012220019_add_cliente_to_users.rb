class AddClienteToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cliente_id, :integer
  end
  
  def self.down
  end
end
