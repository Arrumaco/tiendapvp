class AddCantidadOriginalToLineItems < ActiveRecord::Migration
  def self.up
    remove_column :line_items, :cantidad_despachada
    remove_column :line_items, :deposito_fecha
    remove_column :line_items, :cancelacion_fecha
    add_column :line_items, :despacho_confirmado, :integer, :default => 0
    add_column :line_items, :fecha_despacho_confirmado, :date
    add_column :line_items, :cantidad_original, :integer, :default => 0
  end
  
  def self.down
    remove_column :line_items, :despacho_confirmado	
    remove_column :line_items, :fecha_despacho_confirmado
    remove_column :line_items, :cantidad_original	
  end
end
