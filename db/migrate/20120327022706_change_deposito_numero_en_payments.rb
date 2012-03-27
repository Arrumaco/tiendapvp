class ChangeDepositoNumeroEnPayments < ActiveRecord::Migration
  def up
    change_column :payments, :deposito_numero, :string, :limit => 20
  end

  def down
  end
end
