class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name, :limit => 50
      t.string :short_description, :limit => 50
      t.decimal :amount, precision: 15, scale: 5
      t.date :date
      t.integer :transaction_type
      t.references :wallet, index: true, foreign_key: true
      t.timestamps
    end
  end
end

