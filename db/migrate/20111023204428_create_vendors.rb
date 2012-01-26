class CreateVendors < ActiveRecord::Migration
  def up
    create_table :vendors do |t|
    t.string :nombre, :limit => 45
	  t.string :razon_social
	  t.string :rif
    t.string :direccion, :limit => 120
    t.string :direnvio, :limit => 120
    t.string :telefono1, :limit => 24
    t.string :email, :limit => 50
    t.string :contacto, :limit => 45

    t.timestamps
    end
  end

  def down
    drop_table :vendors
  end
end
