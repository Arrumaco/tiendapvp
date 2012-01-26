class CreateClientes < ActiveRecord::Migration
  def up
    create_table :clientes do |t|
    t.string :nombre
	  t.string :razon_social
	  t.string :rif
	  
	  t.integer :user_id

    t.timestamps
    end
  end

  def down
    drop_table :clientes
  end
end
