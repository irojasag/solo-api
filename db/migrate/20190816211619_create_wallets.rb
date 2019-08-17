class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :name, :limit => 50
      t.decimal :initial_balance, precision: 2, scale: 2
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
