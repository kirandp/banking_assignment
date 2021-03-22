class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.datetime :tx_date
      t.integer :tx_amount
      t.string :tx_type

      t.timestamps
    end
  end
end
