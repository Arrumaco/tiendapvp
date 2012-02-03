class AddDespachoConfirmadoToLineItems < ActiveRecord::Migration

  def self.up
    add_column :line_items, :cantidad_despachada, :integer, :default => 0
    add_column :line_items, :deposito_fecha, :date
    add_column :line_items, :cancelacion_fecha, :date
  end
  
  def self.down
    remove_column :line_items, :cantidad_despachada
    remove_column :line_items, :deposito_fecha	
    remove_column :line_items, :cancelacion_fecha	
  end
end
