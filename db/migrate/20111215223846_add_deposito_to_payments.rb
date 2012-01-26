class AddDepositoToPayments < ActiveRecord::Migration
  def self.up
    add_column :payments, :deposito_numero, :decimal, :precision => 8, :scale => 2
	add_column :payments, :deposito_fecha, :date
  end
  
  def self.down
    remove_column :payments, :deposito_numero
    remove_column :payments, :deposito_fecha	
  end
end
